# 🐍 Python 基礎語法筆記


---

## 1. 迴圈：`while` vs `for`

| 類型 | 適用情境 | 範例結構 |
|------|----------|----------|
| `while True` | 不明確次數（持續執行直到條件中斷） | `while True:` |
| `for` | 明確次數或範圍 | `for i in ...:` |

---

## 2. `range`

```python
range(stop)
range(start, stop)
range(start, stop, step)
```

---

## 3. Collection（集合型別）

| 型別 | 語法 | 特性 |
|------|------|------|
| `list` | `[1, 2, 3]` | 有序、可重複、可修改 |
| `tuple` | `(1, 2, 3)` | 有序、可重複、不可修改 |
| `set` | `{1, 2, 3}` | 無序、不重複 |

---

## 4. `dict`（字典）

```python
d = {
    "key1": "value1",
    "key2": "value2"
}

d["key1"]        # 取值
d["key3"] = 99   # 新增 / 修改
del d["key1"]    # 刪除
```

---


