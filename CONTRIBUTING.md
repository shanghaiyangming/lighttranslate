# 贡献指南

欢迎提交问题、改进建议和 Pull Request。

提交 Issue 时请说明 Windows 版本、轻译版本、触发步骤、预期行为及实际结果。涉及接口兼容性时写明服务商和模型名，但不要提供 API Key、`settings.json`、私人原文或完整认证请求。

修改代码后在 64 位 Windows 上执行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\build.ps1 -Test
node .\scripts\audit-secrets.cjs .
```

本地自检使用隔离的临时配置目录和模拟接口，不需要真实服务商密钥。`dist` 中的构建产物不要提交到 Git。

保持 C# 源码兼容 Windows .NET Framework 编译器，并沿用现有命名和结构。新增功能请更新相关使用文档；API 或设置变更需要验证无密钥首次启动及加密保存行为。

贡献按本项目 MIT 许可证发布。
