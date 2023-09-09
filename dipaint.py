from tkinter import *
import win32gui
import time
from PIL import ImageGrab#pip install pillow
root = Tk()

width = 10

color = 'black'

newwidth = DoubleVar(root)

def paint(event):
    x, y = event.x, event.y
    canvas.create_oval(x-width, y-width, x+width, y+width, fill=color, width=0)

def setColor(newcolor):
    global color
    color = newcolor
def colorpellete():
    id = canvas2.create_rectangle(10, 10, 30, 30, fill='blue', width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor('blue'))

    id = canvas2.create_rectangle(40, 10, 60, 30, fill="grey", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("grey"))
    id = canvas2.create_rectangle(70, 10, 90, 30, fill="brown4", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("brown4"))
    id = canvas2.create_rectangle(100, 10, 120, 30, fill="red", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("red"))
    id = canvas2.create_rectangle(130, 10, 150, 30, fill="orange", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("orange"))
    id = canvas2.create_rectangle(160, 10, 180, 30, fill="yellow", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("yellow"))
    id = canvas2.create_rectangle(190, 10, 210, 30, fill="green", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("green"))
    id = canvas2.create_rectangle(220, 10, 240, 30, fill="black", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("black"))
    id = canvas2.create_rectangle(250, 10, 270, 30, fill="purple", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("purple"))
    id = canvas2.create_rectangle(280, 10, 300, 30, fill="white", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("white"))
    id = canvas2.create_rectangle(310, 10, 330, 30, fill="lightblue", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("lightblue"))
    
    id = canvas2.create_rectangle(340, 10, 360, 30, fill="lightgreen", width=1)
    canvas2.tag_bind(id, "<Button-1>", lambda x:setColor("lightgreen"))
def clearAll():
    canvas.delete("all")
def SaveImage():
    id = canvas.winfo_id()
    rect = win32gui.GetWindowRect(id)
    currentTime = time.strftime("%H %M %S %p")
    ImageGrab.grab(rect).save(f"{currentTime}.bmp")
    canvas.delete("all")
def setWidth(event):
    global width
    width = newwidth.get()
canvas = Canvas(root, height=400, width=400, bg='white')
canvas2 = Canvas(root, height=40, width=400, bg='white')
button = Button(root, text='Clear All', command=clearAll)
save = Button(root, text="Save", command=SaveImage)
scale = Scale(root, from_=1, to=50, variable=newwidth, command=setWidth, orient=HORIZONTAL)

canvas.bind("<B1-Motion>", paint)
root.title("Untitled - Paint")
canvas.pack()
canvas2.pack()
colorpellete()
button.pack()
save.pack()
scale.pack()
root.mainloop()
