# LightTranslate · 轻译

**Select text. Press a shortcut. Read the Chinese translation beside your cursor.**

LightTranslate is a small Windows desktop tool for selection translation and English vocabulary lookup. It uses your own DeepSeek API key and connects directly to your configured provider.

## Download and setup

1. Download the Windows x64 installer or portable `LightTranslate.exe` from [Releases](https://github.com/shanghaiyangming/lighttranslate/releases/latest).
2. Enter your own API key in the settings shown on first launch.
3. Keep the defaults: endpoint `https://api.deepseek.com`, model `deepseek-flash`.
4. Select copyable text in another application, press **Ctrl+Alt+Q**, then release the keys.

Requires Windows 10/11 x64, .NET Framework 4.8, network access and an API account with available credit. The app is free; your provider bills API usage separately.

## Features

[25-second video](https://github.com/shanghaiyangming/lighttranslate/releases/download/v1.0.0/LightTranslate-demo-25s.mp4) · [Demo notes and screenshots](DEMO.md)

The demo uses the actual desktop UI with a local mock API; selection steps are illustrative and timings do not measure the real DeepSeek service.

- Global selection shortcut and a compact cursor-adjacent popup.
- Streaming Chinese translations; English words and short phrases receive IPA, usage, examples and etymology.
- Common Markdown formatting, copy, cancel, retry and manual paste.
- Tray operation, configurable hotkeys and optional startup at login.
- API keys encrypted locally with Windows current-user DPAPI.
- No telemetry or saved translation history; a bounded in-memory cache lasts only for the current process.

Text and prompts are sent to the API endpoint you configure. Other OpenAI-compatible endpoints must support streaming chat completions and `thinking.type = disabled`. Dictionary entries are model-generated and may contain errors. No OCR is included.

## Build

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\build.ps1 -Test
```

To build an installer, install Inno Setup 6/7 and add `-Installer`. No NuGet dependencies. Self-tests use a local mock API, no real API key or API charges.

[Chinese documentation](../README.md) · [Report an issue](https://github.com/shanghaiyangming/lighttranslate/issues) · [MIT License](../LICENSE)
