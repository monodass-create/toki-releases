# 토키 · Toki

Windows용 마이크 반응형 PNGTuber입니다. 표정 PNG와 목소리 크기로 캐릭터가 반응하며, 선택형 키보드·마우스 소품을 제공합니다. 슬라임이 기본으로 포함되고 다른 캐릭터 4종은 별도로 내려받을 수 있습니다.

**[최신 설치 파일 다운로드](https://github.com/monodass-create/toki-releases/releases/latest)**

Windows x64 · .NET 실행 환경 포함 · 한국어 / English. Windows Authenticode 코드 서명은 아직 적용되지 않았습니다.

## 1.5.4

공통 눈감기 및 선택형 입 레이어, 캐릭터 파일 드래그 앤 드롭, PNG·팩 가져오기 검사와 이미지 재사용을 개선했습니다. 실행 구성 및 업데이트 파일의 배포자 서명 검증을 추가했습니다. 이 검증은 Windows의 게시자 인증과 다르며 모든 위조·변조를 막지는 못합니다. [변경 사항과 확인 범위](https://github.com/monodass-create/toki-releases/releases/tag/v1.5.4)

## 캐릭터

슬라임은 기본 동봉합니다. 아래 팩을 내려받아 캐릭터 탭에서 가져오세요. 기존에 등록한 캐릭터도 유지됩니다.

- [유령 / Ghost](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-ghost.toki)
- [별 / Star](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-star.toki)
- [로봇 / Robot](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-robot-v2.toki)
- [잎 / Leaf](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-leaf-v2.toki)

## 용도별 출력

- PRISM: Spout2 캡처에서 Toki를 선택합니다.
- OBS: [obs-spout2 플러그인](https://github.com/Off-World-Live/obs-spout2-plugin)을 설치하고 Spout2 Capture에서 Toki를 선택합니다.
- Discord: Toki에서 화면 공유 출력을 켜고 원본 창/모니터를 선택한 뒤, Discord에서 Toki Share 창을 공유합니다. 우측 하단 캐릭터 합성, 영상 전용 720p·최대 약 30fps입니다. 게임 소리는 전달하지 않으며 원본 창을 최소화하지 마세요.

Toki 설정 창은 트레이로 보내도 됩니다. Spout2 출력과 화면 공유는 따로 켜고 끕니다. 이번 버전에서 외부 수신 시험을 다시 진행한 것은 아닙니다.

## 설명서

한국어와 영어 사용·제작 설명서를 PDF·Word로 동봉합니다. 설정 하단 설명서 · 제작 가이드에서 열 수 있습니다. 아래 PDF·Word는 기존 1.5.3 기능 안내입니다. 새 눈·입 레이어는 설치 폴더의 `guide/blink-layers.html` / `guide/blink-layers-en.html`에 설명합니다. 기본 캐릭터를 레이어로 분리해 그리는 작업은 후속 작업입니다.

- [사용 설명서 PDF](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-User-Guide-KO.pdf) · [Word](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-User-Guide-KO.docx)
- [캐릭터 제작 설명서 PDF](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-Creator-Guide-KO.pdf) · [Word](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-Creator-Guide-KO.docx)
- [English User Guide PDF](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-User-Guide-EN.pdf) · [Word](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-User-Guide-EN.docx)
- [English Creator Guide PDF](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-Creator-Guide-EN.pdf) · [Word](https://github.com/monodass-create/toki-releases/releases/download/v1.5.4/Toki-Creator-Guide-EN.docx)

[한국어 사용법](사용설명서.md) · [English instructions](User-Guide-EN.md)

## 설치와 업데이트

방송을 마치고 Toki를 트레이에서 완전히 종료한 뒤 설치하세요. 기존 설정·등록 PNG·프로필을 유지합니다. 검토판 설정은 자동으로 옮기지 않습니다. 앱의 업데이트 확인에서도 새 버전을 받을 수 있습니다. 자동 확인은 알림만 표시하며 설치는 사용자가 선택합니다. 포터블 ZIP은 새 폴더에 풀어 사용하세요.

1.5.4부터 업데이트에 배포자 서명 목록이 필요합니다. 릴리스의 `release-artifacts.json` / `.sig`와 [독립 검증 도구](Verify-TokiDownload.ps1)를 함께 사용할 수도 있습니다. 검증 도구는 신뢰할 수 있는 공식 경로에서 받아야 합니다. 실행 정책을 완화할 필요는 없습니다. Windows의 PowerShell 7에서 검증했습니다. 설치 프로그램의 최상위 제거용 `unins000.exe`는 실행 구성 검사에서 제외되며 Toki가 이를 불러오거나 실행하지는 않습니다.

이 저장소는 설치 파일과 안내를 배포하는 곳입니다. 개발 소스는 별도로 관리합니다. 구성 요소의 라이선스 고지는 설치 폴더 licenses 및 models, 캐릭터 이용 조건은 characters 폴더에 포함합니다.

## English

Toki is a Windows x64 microphone-reactive PNGTuber with Korean/English UI, optional keyboard/mouse props, Spout2 output and a video-only Discord screen-sharing window. Slime is bundled; four additional packs are linked above. Version 1.5.4 adds optional eye/mouth layers, safer imports, image reuse and publisher-signed runtime/update manifests. Windows Authenticode signing is not applied. Existing profiles and PNGs are retained when upgrading. See the release notes and English instructions for details and verification limits.
