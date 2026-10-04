#requires -Version 5.1
param([Parameter(Mandatory=$true)][string]$File, [string]$Manifest, [string]$Signature)
# Use a verifier obtained separately from the official Toki release channel.
# A verifier taken only from an untrusted repack can itself be replaced.
# This proves agreement with the pinned Toki release key, not Windows Authenticode trust.
$ErrorActionPreference = 'Stop'
$publicCngBlob = 'RUNTMSAAAADyyL5zsfckaquPEctAd9zaQbLe3QQ73+valm1NV2cak68qqhGf1PzhCbSghCbIxLylf/jWy0ulhWLfl3dYPj+M'
try {
    $target = (Resolve-Path -LiteralPath $File).Path
    $folder = Split-Path $target -Parent
    if (-not $Manifest) { $Manifest = Join-Path $folder 'release-artifacts.json' }
    if (-not $Signature) { $Signature = Join-Path $folder 'release-artifacts.sig' }
    if ((Get-Item -LiteralPath $Manifest).Length -gt 262144 -or (Get-Item -LiteralPath $Signature).Length -ne 64) { throw 'Invalid signed metadata size.' }
    $data = [IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $Manifest).Path)
    $sig = [IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $Signature).Path)
    $key = [Security.Cryptography.CngKey]::Import([Convert]::FromBase64String($publicCngBlob), [Security.Cryptography.CngKeyBlobFormat]::EccPublicBlob)
    try {
        $verifier = New-Object Security.Cryptography.ECDsaCng -ArgumentList $key
        try {
            $verifier.HashAlgorithm = [Security.Cryptography.CngAlgorithm]::Sha256
            if (-not $verifier.VerifyData($data, $sig)) { throw 'Publisher signature verification failed.' }
        } finally { $verifier.Dispose() }
    } finally { $key.Dispose() }
    $metadata = [Text.Encoding]::UTF8.GetString($data) | ConvertFrom-Json
    if ($metadata.Format -ne 1 -or $metadata.Product -cne 'Toki' -or @($metadata.Artifacts).Count -gt 100) { throw 'Invalid publisher artifact list.' }
    $name = Split-Path $target -Leaf
    $entries = @($metadata.Artifacts | Where-Object { $_.name -ceq $name })
    if ($entries.Count -ne 1) { throw 'This filename is not uniquely approved by the publisher.' }
    $entry = $entries[0]
    if ((Get-Item -LiteralPath $target).Length -ne $entry.bytes -or (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash -ine $entry.sha256) { throw 'File content differs from the publisher-approved download.' }
    Write-Output ('Publisher signature and file hash verified: ' + $name)
    exit 0
} catch {
    Write-Error $_ -ErrorAction Continue
    exit 2
}

