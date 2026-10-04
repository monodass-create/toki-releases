# Toki 1.5.4 — Windows x64

Toki is a microphone-reactive PNGTuber app with bundled slime and optional character downloads, custom PNGs, optional keyboard/mouse props and Korean/English UI.

## Install and start
Install Toki-Setup-1.5.4-x64.exe from the official release page. Fully exit Toki from the tray before updating. Existing settings and registered PNGs are preserved. The stable app uses the existing Toki profile; preview settings are not migrated automatically. Extract the portable ZIP into a new folder and run Toki.exe. Windows Authenticode signing is not applied.

Slime is bundled. Download the optional ghost, star, robot and leaf .toki packs from the [official 1.5.4 release](https://github.com/monodass-create/toki-releases/releases/tag/v1.5.4), then drop one onto the dedicated Character target or import it in image management. Previously registered characters remain available.

This release checks allowed archive files and paths, declared and actual expanded sizes, and entry counts. Links and duplicate entries are rejected. PNG structure and resolution are checked (64 MiB per file, 16384 pixels per side, and 32 million source pixels). Direct PNG imports preserve a separate source copy. Pack images are decoded with the existing 1536-pixel display cap and saved as fresh PNGs without source metadata. Repeated images within an imported pack share one stored file and decoded bitmap. Failed imports/restores remove their new staging directories without changing previous settings.

Character packs contain PNG data and predefined settings, not executable plugins. Compression and SHA-256 do not replace malware scanning or publisher authentication. The updater checks official GitHub addresses, SHA-256/size and publisher signatures. Windows code signing and release-account protection remain separate requirements. Passing these checks does not guarantee safety against every malicious file.

Choose a character in Character, select your microphone in Voice, and run Auto voice setup. Measure background noise for 3 seconds, then soft, normal and loud speech for 5 seconds each. Review before applying. Voice files are not saved or sent. Advanced controls include gain, thresholds, timing, Silero VAD and optional RNNoise. They affect character response, not the audio sent by your broadcasting software.

Select an expression and mouth-state card to replace its PNG. Mouth states respond automatically to the microphone. A missing loud PNG falls back to the talking image. Mini mode and customizable shortcuts provide expression controls.

## PRISM / OBS
Enable Spout2 output and select the Toki sender. OBS needs a compatible obs-spout2 plugin. The desktop character window can stay hidden; sending the studio to the tray keeps active output running. Enable the separate Toki Clean sender for a prop-free scene. Configure audio in the broadcasting app.

## Discord screen sharing
Enable screen-share output under Broadcast, choose an application or monitor in the Windows picker, then share the Toki Share window in Discord. Toki adds the character at the bottom right. The output is 1280×720 at up to about 30 fps and carries video only. Application/game audio is not included. Keep the source window restored. Toki settings can remain in the tray. Turn the switch off and end sharing in Discord when finished. Select a source again after restarting Toki.

A safe test scene was confirmed on the Discord receiver. HDR, broad game compatibility and long sessions are not comprehensively verified.

## Manuals, settings and updates
Expand Manuals · Creation guide at the bottom of settings to open PDFs in the active UI language or the folder containing both Korean and English Word originals. All eight files are installed for offline reading. The creator guide includes PNG conventions, a mannequin, arm/desk alignment and an AI artwork prompt.

Character export (.toki) excludes personal microphone and shortcut settings. Full backup (.tokibackup) is for your personal environment. Finish streaming before restoring or updating. Language changes apply on the next launch. Update checks show notifications; installation requires your choice. Downloads are checked against their expected size and SHA-256. Hash checks are not code signing.

Third-party notices are included in licenses and models. Character permissions are described in characters/README-EN.md. Face tracking and 2D rigging are not part of this release.

## Eye and mouth layers
Open Character → Eye & mouth layers to register shared closed eyes and optionally composite mouth PNGs as layers. Keep the option off for complete character images. See guide/blink-layers-en.html. Bundled PDF/Word manuals describe the prior release; this HTML covers the new features. Layered starter artwork is deferred.

## 1.5.4 usability improvements
- Removed a redundant image reload during character initialization.
- Character, profile and backup results now appear at the top of Character settings.
- Improved restoration of a hidden app window.
- Eye and mouth layer settings show source PNG dimensions and advise when the body's aspect ratio differs. Artwork is not changed automatically.
- Drop one .toki file onto the dedicated Character target to use the same validation and backup path as the file picker.
- The studio header and update settings display the same version number.

Voice detection and broadcast methods are unchanged. OBS, PRISM and Discord receiver checks were not repeated for this release.

## Release-file protection
Before opening the studio, the app checks executables, libraries, runtime configuration and voice models against a publisher-signed manifest. Changed, missing or additional runtime files stop startup. Custom character PNGs and personal settings remain editable. Extract the portable version into a fresh folder without mixing binaries from other versions.

Updates now require release-artifacts.json and release-artifacts.sig, verified against a public key pinned inside the app, in addition to the official URL, size and SHA-256. Older unsigned releases cannot be installed through this update path. Signatures and installer bytes are checked again before installation.

This is not Windows Authenticode publisher certification. It cannot fully stop a counterfeit application whose verification code has also been replaced, or third parties using the Toki name. Obtain downloads and any independent verification tool from the trusted official release channel. Debug symbols and internal code guides are excluded from the runtime package.

The root unins000.exe is generated by the installer and excluded from runtime verification. Toki does not load or launch this removal helper. Runtime verification is not a malware scan of the entire installation directory.
