### A. 安裝 Git 工具

* 安裝 **Git**（含 GitHub CLI）
1. 下載 Git 並安裝
2. 使用指令安裝 GitHub CLI
>    ```bash
>   winget install GitHub.cli
>   ```



---

### B. Git 基本設定與常用指令

| 指令 | 說明 |
|------|------|
| `git config --global user.name "名字"` | 設定 Git 使用者名稱（**初次使用必設定**） |
| `git config --global user.email "信箱"` | 設定 Git 使用者信箱（**初次使用必設定**） |
| `git config --global pull.rebase false` | 設定 pull 合併策略（**初次使用必設定**） |
| `git clone <URL>` | 複製（下載）遠端 Repository |
| `git diff` | 查看目前檔案與上次提交的差異 |

---

### C. Git 下載流程（從 GitHub 複製到本機）

1. 從目標目錄**開啟終端機**
2. 前往 GitHub，複製 Repository 網址
3. 執行複製指令：
   ```bash
   git clone <URL>
   ```

---

### D. Git 實作步驟（以 Amtran 課程 Repo 為範例）

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

### E. Git 上傳流程（以 GitHub / Test1 為範例）

1. 在 Zed 開啟本機目錄 `Test1`（檔名任意），完成從 GitHub / Test1 複製
2. 點選下方 **Git Panel**（預設在右下角，可手動移至左下角）
3. 依序操作：**Stage All → Commit → Push**
4. 完成後，前往 GitHub / Test1 確認資料是否已同步
5. 也可透過 **AI Agent** 自動執行 Push 至 GitHub

---

### F. UV 套件同步

進入虛擬環境後，執行以下指令同步套件：

```bash
uv venv
```

```bash
uv sync
```

> 💡 備註：不同步 dev
>```bash
>uv sync --no-dev
>```
 
