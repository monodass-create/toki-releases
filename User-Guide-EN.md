# Toki 1.5.3 — Windows x64

Toki is a microphone-reactive PNGTuber app with five starter characters, custom PNGs, optional keyboard/mouse props and Korean/English UI.

## Install and start
Fully exit Toki from its tray menu, then run Toki-Setup-1.5.3-x64.exe. The .NET runtime is included. Existing settings, profiles, imported PNGs and installed assets are preserved. The installer is unsigned.

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

## Downloads
- [English User Guide PDF](https://github.com/monodass-create/toki-releases/releases/download/v1.5.3/Toki-User-Guide-EN-1.5.3.pdf)
- [English User Guide DOCX](https://github.com/monodass-create/toki-releases/releases/download/v1.5.3/Toki-User-Guide-EN-1.5.3.docx)
- [English Creator Guide PDF](https://github.com/monodass-create/toki-releases/releases/download/v1.5.3/Toki-Creator-Guide-EN-1.5.3.pdf)
- [English Creator Guide DOCX](https://github.com/monodass-create/toki-releases/releases/download/v1.5.3/Toki-Creator-Guide-EN-1.5.3.docx)
