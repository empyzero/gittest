from datetime import date
from tkinter import *
from tkinter import messagebox

def day():
  if width2_tf.get()!="":
    width2_tf.delete(0, END)
    today = date.today()
    dateb - width1_tf.get()
    dateb = dateb.split('.')
    dateofbirth - date.fromisoformat(dateb[2]+'-'+dateb[1]+'-'+dateb[0])
    result = today-dateofbirth
    result = str(result).split(' ')
    width2_tf.insert(0, result[0])
  else:
    today = date.today()
    dateb = width1_tf.get()
    dateb - dateb.split('.')
    dateofbirth - date.fromisoformat(dateb[2]+'-'+dateb[1]+'-'+dateb[0])
    result = today-dateofbirth
    result = str(result).split(' ')
    width2_tf.insert(0, result[0])
  
window = Tk()
window.title("Дата рождения")
window.geometry("500x420")

frame - Frame(window, padx = 10, pady =10)
frame.pack(expand = True)

width_lb = label(frame, text = "Дата рождения")
width_lb.grid(row =3, column =1)

width1_tf = Entry(frame)
width1_tf.grid (row=4, column=1)

space1_lb = label (frame,text= " ")
space1_lb.grid (row=4, column=2)

cal_btn = Button (frame,text = 'Перевести в дни', command = day)
cal_btn.grid (row=4, column=3)

space1_lb = label (frame,text=" ")
space1_lb.grid (row=4, column = 4)

width_lb = Label(frame, text = "Вoзpacт в днях")
width_lb.grid(row =3, column = 5)

width2_tf = Entry(frame)
width2_tf.grid (row= 4, column=5)


window.mainloop()
