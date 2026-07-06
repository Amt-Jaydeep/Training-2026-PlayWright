money = int(input("請輸入消費金額:"))

# 若消費金額未滿 100，直接輸出，不進入會員判斷
if money < 100:
    print(money)
else:
    # 使用 while 迴圈確保使用者輸入正確格式
    while True:
        is_member = input("是否為會員?(y,n)")

        # 轉換為小寫統一處理
        choice = is_member.lower()

        if choice == "y":
            # 會員打折邏輯
            money = money * 0.9
            if money < 100:
                money = 100
            print(round(money))
            break # 結束迴圈
        elif choice == "n":
            # 非會員直接印出原金額
            print(money)
            break # 結束迴圈
        else:
            # 輸入錯誤，提示使用者並繼續下一輪迴圈
            print("格式輸入錯誤，請重新輸入 y 或 n")
