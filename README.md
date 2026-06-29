# 🎭 Playwright & Crawl4AI 自動化測試與 AI 輔助開發筆記

記錄了學習 Python Playwright 自動化網頁爬蟲與相關 AI 工具（Zed, OpenCode, Claude Code）
上課筆記、環境建置流程與實作程式碼。

---

## 📅 2026/06/17 ─ 基礎準備

### 1. ⚙️ 開發工具安裝
* **本地編輯器**: Visual Studio Code
* **雲端 Python 執行平台**: Google Colab

### 2. 🔗 課堂相關參考連結
* **[Python] 上課講義**：[roberthsu2003 / python](https://github.com/roberthsu2003/python)
* **[crawl4AI] 上課講義**：[roberthsu2003 / playwright_crawl4AI](https://github.com/roberthsu2003/playwright_crawl4AI)

**💡 延伸推薦與參考專案：**
* [老師上課實作庫 - \_\_2026_06_17_playwirght\_\_](https://github.com/roberthsu2003/__2026_06_17_playwirght__)
* [提高工作效率工作流 - workflow-productivity](https://github.com/roberthsu2003/workflow-productivity)
* [Anthropic 終端機 AI 工具 - claude-code](https://github.com/anthropics/claude-code)
* [Claude 應用技巧庫 - claude_skill](https://github.com/roberthsu2003/claude_skill)

---

## 📅 2026/06/22 ─ 本地作業環境建置

### A. 安裝次世代編輯器：Zed
* **主要目的**: 使用高效能的 Zed 編輯器，未來將全面串接 `uv` 管理 Python 虛擬環境與執行 AI Agent。
<!-- 📥 📥【請在此處直接 Ctrl+V 貼上 Welcome to Zed 的軟體截圖】-->

### B. 環境套件策略
* ❌ **Mini Anaconda**: 不需要安裝（較為肥大且傳統）。
*  **uv**: 核心使用！極速的全新 Python 虛擬環境與套件管理器。

### C. 使用 Zed 建立虛擬 Python 環境
1. **建立專案資料夾**: 在 Local 本地端建立目錄（例如：`2026-0622_Playwright`）。
2. **開啟命令提示字元 (CMD / PowerShell)**。
3. **安裝 uv 工具**: 在 CMD 中執行以下指令下載安裝：
   ```powershell
   powershell -ExecutionPolicy ByPass -c "irm [https://astral.sh/uv/install.ps1](https://astral.sh/uv/install.ps1) | iex"
