# 🎭 Playwright & Crawl4AI 爬蟲上課筆記

記錄學習 Python Playwright 與相關 AI 工具（Zed, OpenCode, Claude Code）
上課筆記、環境建置流程與實作程式碼。
* **上課畫面**：[上課網址](https://meet.google.com/ifx-tbsg-xac)
---

## 📅 2026/06/17 ─ 基礎準備

### 1. ⚙️ 上課工具

* ❌ **本地編輯器**: Visual Studio Code
* **雲端 Python 執行平台**: Google Colab

### 2. 🔗 課堂相關參考連結

* **[Python]   上課講義**：[Python](https://github.com/roberthsu2003/python)
* **[crawl4AI] 上課講義**：[Playwright_crawl4AI](https://github.com/roberthsu2003/playwright_crawl4AI)

**💡 延伸推薦與參考專案：**

* [PlayWright-上課實作庫](https://github.com/roberthsu2003/__2026_06_17_playwirght__)
* [AI 探索](https://github.com/roberthsu2003/workflow-productivity)
* [Claude code](https://github.com/anthropics/claude-code)
* [Claude skill](https://github.com/roberthsu2003/claude_skill)

---

## 📅 2026/06/22 ─ 本地作業環境建置

### A. 安裝編輯器：Zed

* **主要目的**: 使用高效能的 Zed 編輯器，未來將全面串接 `uv` 管理 Python 虛擬環境與執行 AI Agent。
 <img width="315" height="363" alt="image" src="https://github.com/user-attachments/assets/aaec38e0-522c-4215-b0a2-3aca75942890" />

### B. 作業環境

* ❌ **Mini Anaconda**: 不需要安裝（較大）
* ✅ **UV**: 核心使用！極速 Python 虛擬環境與套件管理器

### C. 使用 Zed 建立虛擬 Python 環境

1. **建立專案資料夾**: 在 Local 本地端建立目錄（例如：`2026-0622_Playwright`）
2. **開啟命令提示字元（CMD / PowerShell）**
3. **安裝 uv 工具**：在 CMD 中執行以下指令下載安裝：
   ```powershell
   powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
   ```
4. **關閉 Zed 然後重啟**（讓環境變數生效）
5. **虛擬 Python 初始化**：
   ```bash
   uv init
   ```
6. **變更 uv Python 版本**（例如：3.12）
7. **修改版本設定檔**：將 `.python-version` 與 `pyproject.toml` 中版本改為 `3.12`（需儲存），並同意安裝
8. **建立虛擬環境**：
   ```bash
   uv venv
   ```
9. 安裝完成後，終端機會顯示 Python 3.12 成功安裝訊息
10. **進入虛擬環境**：
    ```bash
    .venv\Scripts\activate
    ```
11. 開頭出現專案名稱表示成功進入虛擬 uv 環境
12. **離開虛擬環境**：
    ```bash
    deactivate
    ```
13. 此時系統中可同時看到兩個 Python 版本（如 3.14 與 3.12）
<img width="697" height="203" alt="image" src="https://github.com/user-attachments/assets/cdc97926-1a51-4f49-98f5-9ee24f39efa4" />



### D. 安裝 OpenCode（使用免費 AI）

1. 啟動畫面確認安裝成功
2. 選擇專案（例如：`2026-0622_Playwright`）
3. 選擇供應商（Free 方案可選 **GitHub**；其餘供應商需付費）
4. 或直接選擇合適的模型
5. 可將專案的 `.py` 檔案拉入 OpenCode 進行 AI 輔助修改（Zed 編輯器整合優勢）

---

## 📅 2026/06/24 ─ Zed AI Agent 整合設定

### A. Zed 內建 AI Agent 設定

* 開啟 Zed 的 **Settings**
* 依照常用方式選擇安裝的 AI Agent，例如：
  * **OpenCode**（免費）
  * **Codex**
  * **Claude Agent**

> 💡 備註：OpenCode 為免費選項，適合初學者上手。

### B. 透過終端機安裝 Claude（需先安裝 Claude Code CLI）

* 前提：必須先完成 Claude Code 的安裝
* 安裝完成後即可在 Zed 終端機中使用 Claude Agent
