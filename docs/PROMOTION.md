# 轻译推广文案（可直接复制发布）

> 这些平台需要登录账号。若你已在浏览器登录，我可以代你发布；否则请复制下面的文案自行发布。
> 统一产品主页（含 25 秒视频）：https://shanghaiyangming.github.io/lighttranslate/
> 下载：https://github.com/shanghaiyangming/lighttranslate/releases/latest
> 源码：https://github.com/shanghaiyangming/lighttranslate

## 通用短文案（微信/朋友圈/群）

我把用 Codex 做的 Windows 翻译工具「轻译」开源了：选中文字，按 Ctrl+Alt+Q，中文译文就出现在鼠标旁；英文单词还能看音标、例句和词源。MIT 开源，有安装包，填入自己的 DeepSeek API Key 即可用。
主页和 25 秒演示：https://shanghaiyangming.github.io/lighttranslate/

## V2EX（分享创造节点）

标题：轻译 —— 选中文字按一下快捷键，在鼠标旁看翻译（Windows，开源）

正文：
平时读英文网页和文档，最烦的是复制文字、切到聊天窗口、再切回原页面。所以我做了个 Windows 小工具：在任意支持复制的应用里选中文字，按 Ctrl+Alt+Q，鼠标旁就会弹出浮窗，流式显示中文译文。

- 英文单词和 1–5 词短语还能看 IPA、含义、用法、例句和词源
- 托盘常驻，可自定义快捷键，支持复制/停止/重试/粘贴翻译
- 用你自己的 DeepSeek API Key，密钥本机加密保存，不保存翻译历史
- MIT 开源，提供安装包和便携 EXE

它不处理图片 OCR，只做“可复制文字”的快速理解。欢迎试用和反馈。
主页/演示：https://shanghaiyangming.github.io/lighttranslate/
源码：https://github.com/shanghaiyangming/lighttranslate

## 掘金（文章）

标题：我用 Codex 做了一个 Windows 划词翻译工具，并开源了

要点：问题背景 → 使用方式 → 翻译/查词分流 → 密钥与隐私 → 技术实现（WinForms、全局热键、剪贴板取词、SSE 流式解析、DPAPI 加密、异步日志）→ 开源与下载。
可直接引用仓库中的 `docs/INTRODUCTION.md`。

## 知乎（回答或文章）

标题：有哪些值得推荐的 Windows 划词翻译工具？

可回答：介绍轻译的定位（轻量、开源、自带 Key、DeepSeek），说明与浏览器插件的区别、适用场景与限制（不支持 OCR），给出演示视频与下载链接，并声明自己是作者。

## 小众软件（发现频道 / meta.appinn.net）

标题：【开发者自荐】轻译：选中文字，按快捷键在鼠标旁翻译（Windows / 开源 / MIT）

正文用「通用短文案」+ 运行要求 + 下载链接，附一张截图；注意遵守该版块规则（人工审核、标题不夸张、不要复制粘贴）。

## Hacker News（Show HN）

Title: Show HN: LightTranslate – select text, press a hotkey, read the Chinese translation (Windows)

Body:
I built a small Windows utility to avoid copying text into a chat window while reading English docs. Select copyable text in any app, press Ctrl+Alt+Q, and a popup beside the cursor streams a Simplified Chinese translation. Short English words/phrases also get IPA, meaning, usage and examples.

It's MIT-licensed C#/WinForms, uses the user's own DeepSeek API key (stored locally with Windows DPAPI), and does not keep translation history. No OCR. Installer and portable EXE available.
Code: https://github.com/shanghaiyangming/lighttranslate

## Reddit（r/Windows10、r/software、r/opensource、r/SideProject）

Title: I made an open-source Windows selection translator – select text, press Ctrl+Alt+Q, read the Chinese translation beside the cursor

Body: 同 Show HN 英文简介；附主页/演示与下载链接，声明作者身份，遵守各 subreddit 的自荐规则。

## Product Hunt

Tagline: Select text. Press a hotkey. Read the translation beside your cursor.
Description: Open-source Windows selection translator and English dictionary using your own DeepSeek API key. MIT licensed, no telemetry, no saved history.

## AlternativeTo

Added as an alternative to: 划词翻译类工具 / DeepL / 有道翻译（如适用）。
Description: 使用「通用短文案」英文版。

## 发布注意事项

- 如实说明：软件免费、API 由服务商按用量计费、需要自己的 Key、密钥本机加密、无 OCR。
- 演示素材标注“本地模拟接口、非真实 API 速度实测”，不要宣称性能数据。
- 每个平台只发一次，遵守各站自荐规则，避免重复刷屏。
