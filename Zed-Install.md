### 1. 使用 Zed 建立虛擬 Python 環境

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
<img width="865" height="50" alt="image" src="https://github.com/user-attachments/assets/1bb7de7f-bee3-4c9b-bc1e-5b160aa68700" />

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



### 2. Zed 安裝與啟動 AI (OpenCode)

1. 啟動畫面確認安裝成功
2. 選擇專案（例如：`2026-0622_Playwright`）
3. 選擇供應商（Free 方案可選 **GitHub**；其餘供應商需付費）
4. 或直接選擇合適的模型
5. 可將專案的 `.py` 檔案拉入 OpenCode 進行 AI 輔助修改（Zed 編輯器整合優勢）
