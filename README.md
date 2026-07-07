# 📖 Playwright & Crawl4AI 爬蟲上課筆記

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
* **[徐國堂老師] 實作庫**： [2026板橋上課](https://github.com/roberthsu2003/__2026_06_17_playwirght__)

---

## 📅 2026/06/22 ─ 本地作業環境建置

### A. ⚙️安裝編輯器：Zed

* **主要目的**: 使用 Zed 編輯器，串接 `uv` 管理 Python 虛擬環境與執行 AI Agent。
 <img width="315" height="363" alt="image" src="https://github.com/user-attachments/assets/aaec38e0-522c-4215-b0a2-3aca75942890" />

### B. 作業環境

* ❌ **Mini Anaconda**: 不需要安裝（較大）
* ✅ **UV**: 核心使用！極速 Python 虛擬環境與套件管理器

### C. 使用 Zed 建立虛擬 Python 環境
uv ⚙️安裝步驟參閱：[**Zed 環境安裝與設定指南**](./UV&Zed-Install.md)

---

## 📅 2026/06/24 ─ AI agent、Jupyter、作業

### A. Zed 內建 AI Agent 設定

1. 開啟 Zed 的 **Settings**
2. 依照常用方式選擇⚙️安裝的 AI Agent，例如：
  * **OpenCode**（免費）
  * **Codex**
  * **Claude Agent**

> 💡 備註：OpenCode 為免費選項，適合初學者上手。

### B. 透過終端機⚙️安裝 Claude（需先安裝 Claude Code CLI）

* 前提：必須先完成 Claude Code 的安裝
* 安裝完成後即可在 Zed 終端機中使用 Claude Agent

### C. Zed 安裝與啟動 jupyter
1. Jupyter ⚙️安裝步驟參閱： [**Jupyter 環境安裝與設定指南**](./Jupyter-Install.md)

2. 啟動 Jupyter lab: uv run jupyter lab ( **lab 比 notebook 好用** )

### D. 作業_計算 Tool(Py開發)與 GUI(應用)

---

## 📅 2026/06/29 ─ ACP + Git 下載與上傳

### A. ACP（Agent Client Protocol）

* **ACP = Agent Client Protocol**
* 本次上課使用 **Zed 編輯器**，已內建支援 ACP

---

### B. 安裝 Git 工具

* 安裝 **Git**（含 GitHub CLI）
* ⚙️Git 安裝步驟參閱：[**Git 環境安裝與設定指南**](./Git-Install.md)

---

### C. Git 上傳流程（以 GitHub / Test1 為範例）

1. 在 Zed 開啟本機目錄 `Test1`（檔名任意），完成從 GitHub / Test1 複製
2. 點選下方 **Git Panel**（預設在右下角，可手動移至左下角）
3. 依序操作：**Stage All → Commit → Push**
4. 完成後，前往 GitHub / Test1 確認資料是否已同步
5. 也可透過 **AI Agent** 自動執行 Push 至 GitHub

---

### D. GitHub 使用 Passkey

* 適合**上課公用電腦**情境使用，免輸入密碼，更方便快速

---

## 📅 2026/07/01 ─ Python 邏輯運算

**主題：`if` / `else` / `elif` + `try` / `except`**

> ℹ️ 本節內容與 Playwright 主軸關聯較低，可依個人需求選擇性複習。

---
