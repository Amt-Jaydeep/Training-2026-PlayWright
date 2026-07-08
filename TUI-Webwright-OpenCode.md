# 🌐 TUI Webwright for Zed (OpenCode)

---

## ⚙️ 安裝 TUI Webwright for Zed (OpenCode)

---

## A. TUI Agent 環境建立

1. ⚙️下載並安裝 **Node.js**

2. **路徑設定**（若 IT 用 admin 權限安裝 Node.js，可能只寫入 admin 帳號的 PATH，未同步使用者帳號，導致 `opencode` 指令失效）

   * 先確認自己帳號的 PATH 是否已包含 npm 全域路徑：
   ```powershell
   $env:PATH -split ';' | Select-String "npm"
   ```

   * 如果沒有反應，手動補上：
   ```powershell
   [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Users\使用者\AppData\Roaming\npm", "User")
   ```

   > 設定後**需完全關閉 Zed（不是只關分頁）並重新開啟**才會生效。

3. 啟動 **Zed** 編輯器

4. 安裝 OpenCode（全域安裝）：
   ```bash
   npm i -g opencode-ai
   ```
   > 🔗 官方網址：[https://opencode.ai/zht](https://opencode.ai/zht)
<img width="865" height="338" alt="image" src="https://github.com/user-attachments/assets/a8baa03a-2dc4-469a-a853-78d706a1b788" />

5. 在 Zed 開啟終端機

6. 啟動 TUI Agent：
   ```bash
   npx opencode
   ```
   > 💡 上課環境直接輸入 `opencode`
   > ✅ 若步驟 2 已正確設定 PATH，可直接輸入 `opencode` 啟動，不需要透過 `npx` 

7. 確認 TUI Agent（OpenCode）啟動成功
 <img width="865" height="508" alt="image" src="https://github.com/user-attachments/assets/d9298239-34d3-4c92-b363-59a21c8ad593" />


---

## B. Playwright 環境建立

1. ⚙️安裝 Playwright：
   ```bash
   uv add playwright
   ```

2. ⚙️安裝瀏覽器驅動：

   | 指令 | 說明 |
   |------|------|
   | `uv run playwright install chromium` | 安裝 Chromium（Chrome 的開源母體） |
   | `uv run playwright install firefox` | 安裝 Firefox |
   | `uv run playwright install` | 安裝所有主流瀏覽器（Chromium、Firefox、WebKit） |

---

## C. 建立 OpenCode Skill（Webwright）

1. 在專案下建立 Skill 目錄：
   ```powershell
   New-Item -ItemType Directory -Force -Path .opencode/skills
   ```

2. Clone Webwright 專案至暫存目錄：
   ```powershell
   git clone https://github.com/microsoft/Webwright.git $env:TEMP/Webwright
   ```
   > 💡 建立暫存區主要是保持 Project 資料乾淨 ( Webwright 完整資料龐大)

3. 從暫存區複製 Webwright Skill 至專案：
   ```powershell
   Copy-Item -Recurse -Force -Path $env:TEMP/Webwright/skills/webwright -Destination .opencode/skills/webwright
   ```

4. 清理暫存目錄：
   ```powershell
   Remove-Item -Recurse -Force -Path $env:TEMP/Webwright
   ```
   > 💡 暫存區複製 Skill 之後,其餘可刪除

5. 在專案根目錄建立 `opencode.json`，授權使用 Webwright：
   ```json
   {
     "$schema": "https://opencode.ai/config.json",
     "permission": {
       "skill": {
         "webwright": "allow"
       },
       "bash": "ask"
     }
   }
   ```

6. 確認專案目錄結構如下：
   ```
   你的專案/
   ├── .opencode/
   │   └── skills/
   │       └── webwright/
   │           └── SKILL.md
   └── opencode.json
   ```

---

## D. 在 Zed + OpenCode 使用 Webwright 搜尋資料

1. 在 Zed 終端機啟動 OpenCode：
   ```bash
   opencode
   ```


2. 輸入 `/` 切換並選擇合適模型（優先選擇免費方案）
<img width="865" height="320" alt="image" src="https://github.com/user-attachments/assets/130ad371-6468-4bde-bc49-9b727c035510" />

3. 輸入 `/Skills`，找到並選擇 **Webwright Skill**
<img width="865" height="235" alt="image" src="https://github.com/user-attachments/assets/d4a5b223-2fd4-494e-b116-a71dbf6c8315" />

4. 選擇後確認 Skill 已載入
<img width="865" height="279" alt="image" src="https://github.com/user-attachments/assets/41172661-c777-44bb-a86a-2c9399bc148d" />

5. 輸入需要查詢或爬取的資料需求

6. 爬蟲完成後，結果可在以下路徑找到：
   ```
   final_runs\run_1
   ```

7. 同時會產生 `final_script.py`，可手動執行重現結果

