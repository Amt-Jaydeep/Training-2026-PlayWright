# 🪐 Jupyter 環境安裝

---

## A. 安裝 Jupyter ( 上課用, 實際可忽略)

1. 使用 `uv` 安裝 JupyterLab 相關套件：
   ```bash
   uv add --dev jupyterlab jupyterlab-lsp basedpyright ipykernel
   ```

2. 啟動 JupyterLab：
   ```bash
   uv run jupyter lab
   ```
   > 💡 建議使用 `jupyter lab`，功能比 `jupyter notebook` 更完整

3. 完成後啟動 JupyterLab 進行設定 for 錯誤提示

---

*最後更新：2026/07/07*
