# Playwright Training - 上課環境懶人包

## 操作步驟 (一鍵安裝)

1. 以系統管理員開啟 PowerShell
> 按 Win + X，選擇 Windows PowerShell (系統管理員) 或 終端機 (系統管理員)
2. 切換到腳本所在目錄 ( 不會切換: 可直接把腳本複製現在目錄)
3. 執行以下指令授權
```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
```
> 💡低風險: 臨時授權

```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
> 💡高風險: 全域授權

4. 依照需求執行自動安裝人包
---
### 方案 A：含 OpenCode AI

```bash
.\Install-DevTools-WithOpenCode.ps1
```

### 方案 B：不含 OpenCode

```bash
.\Install-DevTools.ps1
```

---

## 安裝內容比較

| 工具 | 方案 B | 方案 A | 用途 |
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
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process ( 臨時-低風險 )
> 💡Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser ( 全域-高風險 )
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




