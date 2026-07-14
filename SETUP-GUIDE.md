# Playwright Training - 上課環境懶人包

## 快速開始 (一鍵安裝)

### 方案 A：不含 OpenCode

```powershell
# 1. 以系統管理員開啟 PowerShell
# 2. 執行以下指令
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/YOUR_USERNAME/REPO/main/Install-DevTools.ps1" | Invoke-Expression
```

### 方案 B：含 OpenCode AI

```powershell
# 1. 以系統管理員開啟 PowerShell
# 2. 執行以下指令
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/YOUR_USERNAME/REPO/main/Install-DevTools-WithOpenCode.ps1" | Invoke-Expression
```

---

## 安裝內容比較

| 工具 | 方案 A | 方案 B | 用途 |
|------|:------:|:------:|------|
| uv | V | V | Python 套件管理器 |
| Git | V | V | 版本控制 |
| Python 3.12 | V | V | 程式語言 |
| Playwright | V | V | 瀏覽器自動化 |
| Zed | V | V | 編輯器 |
| Node.js | - | V | JavaScript 執行環境 |
| OpenCode | - | V | AI 輔助編程 |

---

## 手動安裝 (離線 / 無網路)

如果無法連線，可下載安裝檔手動安裝：

| 工具 | 下載網址 |
|------|----------|
| uv | https://docs.astral.sh/uv/getting-started/installation/ |
| Git | https://git-scm.com/download/win |
| Python | https://www.python.org/downloads/ |
| Playwright | https://playwright.dev/python/docs/intro |
| Zed | https://zed.dev/download |
| Node.js | https://nodejs.org/ |
| OpenCode | `npm install -g opencode-ai` |

---

## 常見問題

### Q: 執行腳本出現「無法載入，因為這個系統上禁止執行腳本」

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
```

### Q: 安裝後指令找不到

重新開啟終端機，讓環境變數生效。

### Q: 如何確認安裝成功？

```powershell
uv --version
git --version
python --version
node --version          # 方案 B
opencode --version      # 方案 B
```

---

## 上課流程

```
1. 執行安裝腳本 (約 5-10 分鐘)
2. 開啟 Zed 編輯器
3. 建立專案資料夾
4. 開啟 OpenCode 輔助 (方案 B)
5. 開始寫 Playwright 自動化測試
```

---

## 相關文件

- [uv 文件](https://docs.astral.sh/uv/)
- [Playwright 文件](https://playwright.dev/)
- [Zed 文件](https://zed.dev/docs)
- [OpenCode GitHub](https://github.com/anomalyco/opencode)
