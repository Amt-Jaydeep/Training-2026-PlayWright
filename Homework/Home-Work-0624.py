#!/usr/bin/python3
import math

import customtkinter as ctk

# --- 介面風格全域設定 ---
ctk.set_appearance_mode("System")  # 自動跟隨作業系統的深色/淺色模式
ctk.set_default_color_theme("blue")  # 設定精緻的科技藍主題


class CircleCalculatorApp(ctk.CTk):
    def __init__(self):
        super().__init__()

        # 視窗基礎設定
        self.title("圓形計算器")
        self.geometry("450x420")
        self.resizable(False, False)  # 固定視窗大小，維持設計師比例外觀

        # --- 1. 標題與副標題區域 ---
        self.title_label = ctk.CTkLabel(
            self,
            text="圓要素計算",
            font=ctk.CTkFont(family="Microsoft JhengHei", size=24, weight="bold"),
        )
        self.title_label.pack(pady=(30, 5))

        self.subtitle_label = ctk.CTkLabel(
            self,
            text="請輸入半徑以獲取計算結果",
            font=ctk.CTkFont(family="Microsoft JhengHei", size=13),
            text_color="gray",
        )
        self.subtitle_label.pack(pady=(0, 25))

        # --- 2. 輸入區域卡片 (Frame) ---
        self.input_frame = ctk.CTkFrame(self)
        self.input_frame.pack(pady=10, padx=30, fill="x")

        self.entry_label = ctk.CTkLabel(
            self.input_frame,
            text="圓的半徑 (Radius) :",
            font=ctk.CTkFont(family="Microsoft JhengHei", size=14, weight="bold"),
        )
        self.entry_label.pack(side="left", padx=20, pady=20)

        self.radius_entry = ctk.CTkEntry(
            self.input_frame,
            placeholder_text="例如: 5.0",
            width=150,
            font=ctk.CTkFont(size=14),
        )
        self.radius_entry.pack(side="right", padx=20, pady=20)

        # 綁定 Enter 鍵，輸入完直接按鍵盤 Enter 也能觸發計算
        self.radius_entry.bind("<Return>", lambda event: self.calculate())

        # --- 3. 科技感計算按鈕 ---
        self.calc_button = ctk.CTkButton(
            self,
            text="立即計算",
            command=self.calculate,
            font=ctk.CTkFont(family="Microsoft JhengHei", size=15, weight="bold"),
            height=42,
            corner_radius=8,
        )
        self.calc_button.pack(pady=20, padx=30, fill="x")

        # --- 4. 結果顯示卡片區域 ---
        self.result_frame = ctk.CTkFrame(self, fg_color="transparent")
        self.result_frame.pack(pady=10, padx=35, fill="x")

        # 圓周長結果欄
        self.circ_label = ctk.CTkLabel(
            self.result_frame,
            text="圓周長 (Circumference) ： --",
            font=ctk.CTkFont(family="Consolas", size=15),
            anchor="w",
        )
        self.circ_label.pack(pady=6, fill="x")

        # 圓面積結果欄
        self.area_label = ctk.CTkLabel(
            self.result_frame,
            text="圓面積 (Circle Area)   ： --",
            font=ctk.CTkFont(family="Consolas", size=15),
            anchor="w",
        )
        self.area_label.pack(pady=6, fill="x")

    def calculate(self):
        """核心幾何計算邏輯"""
        # 1. 拿取並清理輸入值
        raw_input = self.radius_entry.get().strip()

        # 2. 先檢查是不是空的
        if not raw_input:
            self.show_error("錯誤：半徑欄位不能留空！")
            return

        # 3. 嘗試轉換成數字與計算
        try:
            radius = float(raw_input)

            if radius < 0:
                self.show_error("錯誤：半徑不能為負數！")
                return

            # 數學公式計算
            circumference = 2 * math.pi * radius
            area = math.pi * math.pow(radius, 2)

            # 更新 UI 顯示，並確保字體顏色在深淺色模式下正常顯示
            self.circ_label.configure(
                text=f"圓周長 (Circumference) ： {circumference:.4f}",
                text_color=("#000000", "#FFFFFF"),
            )
            self.area_label.configure(
                text=f"圓面積 (Circle Area)   ： {area:.4f}",
                text_color=("#000000", "#FFFFFF"),
            )

        except ValueError:
            # 只有在轉數字失敗時（例如輸入中文、特殊符號），才會走到這裡
            self.show_error("錯誤：請輸入有效的數字！")

    def show_error(self, message):
        """錯誤提示樣式"""
        self.circ_label.configure(text=message, text_color="#ff4d4d")
        self.area_label.configure(text="")


if __name__ == "__main__":
    app = CircleCalculatorApp()
    app.mainloop()
