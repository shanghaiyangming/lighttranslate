# 轻译 v1.0.0 — 首个开源版本

**选中文字，按 Ctrl+Alt+Q，中文译文就在鼠标旁。**

轻译是一款 Windows 划词翻译与英语查词工具，以 MIT 许可证发布完整源码。

## 下载哪个文件？

- **`LightTranslate-Setup-1.0.0-windows-x64.exe`**：推荐，当前用户安装，可创建桌面快捷方式，支持卸载。
- **`LightTranslate.exe`**：便携版，下载后直接运行。
- **`LightTranslate-1.0.0-windows-x64.zip`**：便携版、使用文档和许可证的压缩包。
- **`SHA256SUMS.txt`**：下载校验值。
- GitHub 自动提供 Source code 压缩包，也可直接克隆源码仓库。

要求 Windows 10/11 x64 和 .NET Framework 4.8。此版本未做商业代码签名。

## 首次使用

启动后填入自己的 DeepSeek API Key，默认接口 `https://api.deepseek.com`、模型 `deepseek-flash`，保存后即可使用。API 账号需有可用额度，服务商按实际用量计费；软件本身免费。

## 主要功能

- 全局快捷键、鼠标旁浮窗、托盘后台运行。
- 默认将文本译为中文；英文单词和短语提供音标、用法、例句、词源。
- 流式译文、Markdown 格式、复制、取消、重试和手动粘贴。
- 自定义接口、模型、提示词、快捷键和可选开机启动。
- 密钥使用 Windows 当前用户 DPAPI 加密保存；不保存翻译历史。

首次配置密钥为空，仅在用户主动操作时导入 Handy 设置。发布文件不包含用户配置或真实凭据。

## 已验证

Windows 本地编译、自检和模拟 API 测试：首次运行、密钥加密保存/重载、32 个分类边界与结果保护、流式响应、用户认证头、取消、401 错误、错误模式自动纠正、Markdown 显示、日志保留及非阻塞写入。

真实 DeepSeek 请求取决于用户自己的密钥、额度和网络；本次发布测试未调用付费 API。模型生成的音标和词源可能不准确；不支持图片 OCR。

[使用指南](https://github.com/shanghaiyangming/lighttranslate/blob/main/docs/USAGE.md) · [反馈问题](https://github.com/shanghaiyangming/lighttranslate/issues)
