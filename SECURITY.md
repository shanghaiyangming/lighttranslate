# 安全与隐私

API Key 使用 Windows DPAPI 的 `CurrentUser` 范围加密，仅将密文写入用户配置；它仍可被拥有相同 Windows 用户权限的程序解密。API Key 必须发给用户选择的服务商以完成认证。

默认仅允许 HTTPS API 地址，本机回环模拟接口允许 HTTP。翻译原文和系统提示词发送至所配置的端点。程序不保存翻译历史，不收集遥测。

不要将用户配置、Handy 的配置、API Key、凭据或私人原文提交到仓库/Issue，也不要将它们放进发布包。提交前使用 `scripts/audit-secrets.cjs` 检查；自动扫描不能保证发现所有格式的敏感信息。

请通过仓库 GitHub Security 页面进行私密漏洞报告，不要在公开 Issue 中发布可用凭据。
