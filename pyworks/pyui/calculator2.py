#계산기- 간단한 숫자 표시

from tkinter import *


root = Tk()
root.title("나의 계산기")

#출력창
#top_row 프레임
top_row = Frame(root)
top_row.grid(row = 0 , column = 0, sticky=N)
display = Entry(top_row, width=50, bg='light gray')
display.grid(row= 0, column=0)

# 숫자 버튼-num_pad
num_pad = Frame(root)
num_pad.grid(row=1, column=0, sticky=W)
num_pad_list = [
    '7', '8', '9', '－',
    '4', '5', '6', '＋',
    '1', '2', '3', '×',
    'c', '0', '=', '÷'
]
r=0
c=0
for btn_text in num_pad_list:
    Button(num_pad, text=btn_text, width=1 ,height=1).grid(row=r, column=c)
    c= c + 1
    if c >3:
        c=0
        r=r+1





root.mainloop()
