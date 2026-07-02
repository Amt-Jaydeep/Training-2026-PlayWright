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

**💡 延伸推薦與參考專案：**

* [PlayWright-上課實作庫](https://github.com/roberthsu2003/__2026_06_17_playwirght__)
* [AI 探索](https://github.com/roberthsu2003/workflow-productivity)
* [Claude code](https://github.com/anthropics/claude-code)
* [Claude skill](https://github.com/roberthsu2003/claude_skill)

---

## 📅 2026/06/22 ─ 本地作業環境建置

### A. ⚙️安裝編輯器：Zed

* **主要目的**: 使用 Zed 編輯器，串接 `uv` 管理 Python 虛擬環境與執行 AI Agent。
 <img width="315" height="363" alt="image" src="https://github.com/user-attachments/assets/aaec38e0-522c-4215-b0a2-3aca75942890" />

### B. 作業環境

* ❌ **Mini Anaconda**: 不需要安裝（較大）
* ✅ **UV**: 核心使用！極速 Python 虛擬環境與套件管理器

### C. 使用 Zed 建立虛擬 Python 環境
uv ⚙️安裝步驟參閱：[**Zed 環境安裝與設定指南 (Zed-Install.md)**](./Zed-Install.md)

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

### C. Zed ⚙️安裝 jupyter

1. uv add jupyter lab
2. uv run jupyter lab ( **lab 比 notebook 好用** )

### D. 作業_計算 Tool(Py開發)與 GUI(應用)

---

## 📅 2026/06/29 ─ ACP + Git 下載與上傳

### A. ACP（Agent Client Protocol）

* **ACP = Agent Client Protocol**
* 本次上課使用 **Zed 編輯器**，已內建支援 ACP

---

### B. 安裝 Git 工具

* 安裝 **Git**（含 GitHub CLI）

---

### C. Git 基本設定與常用指令

| 指令 | 說明 |
|------|------|
| `git config --global user.name "名字"` | 設定 Git 使用者名稱（**初次使用必設定**） |
| `git config --global user.email "信箱"` | 設定 Git 使用者信箱（**初次使用必設定**） |
| `git config --global pull.rebase false` | 設定 pull 合併策略（**初次使用必設定**） |
| `git clone <URL>` | 複製（下載）遠端 Repository |
| `git diff` | 查看目前檔案與上次提交的差異 |

---

### D. Git 下載流程（從 GitHub 複製到本機）

1. 從目標目錄**開啟終端機**
2. 前往 GitHub，複製 Repository 網址
3. 執行複製指令：
   ```bash
   git clone <URL>
   ```

---

### E. Git 實作步驟（以 Amtran 課程 Repo 為範例）

1. 在 Zed 開啟資料夾 `2026-Teacher-LL`
2. 在 `2026-Teacher-LL` 目錄中開啟 Terminal
3. 設定 Git 使用者名稱：
   ```bash
   git config --global user.name "Jaydeep"
   ```
4. 設定 Git 使用者信箱：
   ```bash
   git config --global user.email "你的信箱"
   ```
5. 設定 pull 策略：
   ```bash
   git config --global pull.rebase false
   ```
6. Clone 目標 Repository：
   ```bash
   git clone https://github.com/Amt-Jaydeep/Training-2026-PlayWright.git
   ```
7. 首次使用需登入帳號授權，完成後 GitHub 資料將複製到本機目錄

---

### F. Git 上傳流程（以 GitHub / Test1 為範例）

1. 在 Zed 開啟本機目錄 `Test1`（檔名任意），完成從 GitHub / Test1 複製
2. 點選下方 **Git Panel**（預設在右下角，可手動移至左下角）
3. 依序操作：**Stage All → Commit → Push**
4. 完成後，前往 GitHub / Test1 確認資料是否已同步
5. 也可透過 **AI Agent** 自動執行 Push 至 GitHub

---

### G. UV 套件同步

進入虛擬環境後，執行以下指令同步套件：

```bash
uv venv
uv sync
```

---

### H. GitHub 使用 Passkey

* 適合**上課公用電腦**情境使用，免輸入密碼，更方便快速

---

## 📅 2026/07/01 ─ Python 邏輯運算

**主題：`if` / `else` / `elif` + `try` / `except`**

> ℹ️ 本節內容與 Playwright 主軸關聯較低，可依個人需求選擇性複習。

---
