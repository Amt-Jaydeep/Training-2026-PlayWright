# 2026板橋爬蟲
2026/06/17 基礎

1.	[Tool] 安裝: Visual Studio Code

2.Python 使用平台: COLAB ( Google )

2.	本次上課講義存放路徑如下
[Python] 上課講義
https://github.com/roberthsu2003/python

[crawl4AI] 上課講義
https://github.com/roberthsu2003/playwright_crawl4AI

https://github.com/roberthsu2003/__2026_06_17_playwirght__
https://github.com/roberthsu2003/playwright_crawl4AI
https://github.com/roberthsu2003/python
https://github.com/roberthsu2003/workflow-productivity
https://github.com/anthropics/claude-code
https://github.com/roberthsu2003/claude_skill





2026/06/22 作業環境

A. 安裝編輯器: Zed // 未來安裝 UV ( 虛擬 Python)
 
B.環境
B-1. min anaconda ( 不需要 )
B-2.uv ( 虛擬 Python )

C. 使用Zed 建立虛擬 Python
C-1. 開啟專案在Local 建立目錄 ( 如 2026-0622_Playwright )
C-2. 開啟 CMD 
C-3. 安裝 uv - [CMD] powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
C-4. 關閉 Zed 然後重啟
C-5. 虛擬 Python 初始化-[CMD] uv init
C-6. 變更 uv Python version ( Ex: 3.12)
C-7. .python-version / pyproject.toml 版本改為 3.12 ( *要 Save ), 並同意安裝
C-8. uv venv

C-9.安裝完成 3.12 訊息如下
 
C-10. 進入虛擬 UV - [CMD] .venv\Scripts\activate
 
C-11. 開頭出現專案名稱表示成功進入 虛擬 uv
C-12. 離開則輸入 deactivate
 
C-13. 可以看到有兩個 Python ( 3.14 與 3.12 )

D.安裝 opencode ( 使用免費 AI )
D-1.啟動畫面
 

D-2. 選擇專案( 如 2026-0622_Playwright )
 

D-3. 選擇供應商 ( Free 可選 Github , 其餘需要費用)
D-4. 或者直接選擇合適模型
 
D-5. 可以將專案的 Py 拉到這邊修改 ( 編輯器的優點 )






6/24

A.	Zed Ai agent 設定
B.	開啟 Setting ( 依照常用的方式安裝, Ex: Opencode / Codex / Claude Agent)
備註: Open code 是免費的
C.	可用 終端機安裝 Claude (前提是需要安裝 Claude code )
     
D.	在編輯器啟動 jupyter lab:
D-1.安裝: uv add jupyter lab
D-2.啟動: uv run jupyter lab ( lab 比 notebook 好用 )

E.	

