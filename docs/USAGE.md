# 轻译使用指南

## 安装与首次配置

从 [GitHub Releases](https://github.com/shanghaiyangming/lighttranslate/releases/latest) 下载 Windows x64 安装包，双击安装。默认安装目录为 `%LOCALAPPDATA%\Programs\LightTranslate`；桌面快捷方式可在安装时勾选。无需安装 Python、Node.js 或 Visual Studio。

如果希望便携运行，下载 `LightTranslate.exe` 并放在固定目录。配置仍保存在当前用户的 AppData，不会跟随 EXE 移动。

首次启动自动打开设置：

| 设置项 | DeepSeek 推荐值 |
| --- | --- |
| 接口 | `https://api.deepseek.com` |
| 模型 | `deepseek-flash` |
| API 密钥 | 你自己的 DeepSeek API Key |
| 划词快捷键 | `Ctrl+Alt+Q` |

API Key 在 [DeepSeek 平台](https://platform.deepseek.com/api_keys) 创建。需要 API 账号具有可用额度。API 请求由服务商计费，轻译本身免费。

没有配置文件时不自动读取其他软件的密钥；“从 Handy 导入”仅在你主动点击后读取本机 Handy 设置，点击保存后才生效。

## 日常操作

1. 在其他应用里选中可以复制的文字。
2. 按 `Ctrl+Alt+Q`，再松开快捷键。
3. 在鼠标旁查看流式译文。

浮窗右上角“···”菜单提供查看/编辑原文、重新翻译、粘贴并翻译、停止翻译和设置。编辑原文后按 `Ctrl+Enter` 翻译。点击“复制”复制显示文字；按 Esc 或点击浮窗外部收起。

英文形式的 1–5 个词作为查词候选；6 个词及以上、带数字、多语言混合或多段落文本走普通翻译模式。候选实际为其他语言时仍应译成中文。结果不符合模式时最多自动重试一次，重试可能增加 API 用量。

查词给出音标、中文解释、例句与词源，内容由模型生成。不要把不确定的词源当作权威辞典结论。

## 托盘与开机启动

收起浮窗后程序仍在系统托盘运行。双击托盘图标打开，右键选择“设置”或“退出”。开机启动默认关闭，可在设置中勾选“登录 Windows 后自动启动”。便携版开启自动启动后，不要移动 EXE；需要移动时先关闭自动启动，再在新路径重新开启。

## 常见问题

- **没有读到选中文字**：确认应用允许复制。管理员权限窗口、图片和某些 PDF 扫描页可能无法取词；可手动复制后使用“粘贴并翻译”。不支持截图 OCR。
- **快捷键被占用**：进入设置改用其他 Ctrl/Alt 组合。
- **401/403**：检查 API Key、接口地址和账号权限。
- **429**：检查额度或等待限流解除。
- **400/404**：检查模型名及接口是否支持当前请求参数。
- **网络/超时错误**：检查到所选 API 的网络连接。请求最多等待 60 秒，已生成的部分译文会保留。
- **缺少 .NET 运行环境**：安装 Microsoft .NET Framework 4.8 后重试。
- **Windows 显示未识别发布者**：此版本未做商业代码签名。请从本项目官方 Releases 下载，并核对 `SHA256SUMS.txt` 中的校验值。

## 配置与卸载

配置：`%APPDATA%\LightTranslate\settings.json`。密钥经当前 Windows 用户的 DPAPI 加密，不能直接复制到另一用户或计算机使用。其他设置、例如提示词和接口地址，未加密。

日志：`%APPDATA%\LightTranslate\logs`，按小时分文件，仅保留 48 小时。提交问题时不要附上自己的配置文件或未检查的日志。

通过 Windows“已安装的应用”卸载安装版。卸载器移除应用及其自动启动项，保留用户配置；如需彻底清除，退出程序后手动删除 `%APPDATA%\LightTranslate`。便携版先在设置中关闭自动启动，再退出并删除 EXE。
