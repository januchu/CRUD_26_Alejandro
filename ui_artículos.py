from tkinter import *
from tkinter import ttk
import  G8_database


window=Tk()
frame_app = Frame(window, width=900, height=580, bg="thistle2")
frame_app.pack()

my_table=ttk.Treeview(window)





import mysql.connector
connection =mysql.connector.connect(host="localhost", 
                                  user="root", 
                                  passwd="", 
                                  database="db_lol")

cursor = connection.cursor()
cursor.execute( "SELECT `NOMBRE DE ARTICULO`, `PRECIO UNITARIO`, `ID_AREA` FROM TBL_ARTICULOS")


     
    
    
my_table = ttk.Treeview(window)
    

registro=0
for fila in cursor:
    registro=registro+1
    print(str(fila))
    
    nombre_de_articulo = fila[0]  
    precio_unitario= fila[1]
    id_area = fila[2]
    
    my_table.insert(parent="", index="end", iid=registro, text=str(registro),
        values=(nombre_de_articulo, precio_unitario, id_area,))
connection.close() 

my_table['columns'] = ('NOMBRE_DE_ARTICULO', 'PRECIO_UNITARIO', ' ID_AREA')
my_table.column('#0', width=120, minwidth=50)
my_table.column('NOMBRE_DE_ARTICULO', anchor=W, width=120)
my_table.column('PRECIO_UNITARIO', anchor=W, width=120)
my_table.column(' ID_AREA', anchor=W, width=120)


my_table.heading('#0', text='ID_CAMPO', anchor=W)
my_table.heading('NOMBRE_DE_ARTICULO', text='NOMBRE_DE_ARTICULO', anchor=W)
my_table.heading('PRECIO_UNITARIO', text='PRECIO_UNITARIO', anchor=W)
my_table.heading(' ID_AREA', text=' ID_AREA', anchor=W)
my_table.place(x=405, y=100)



pro = StringVar()
pre = StringVar()
can = StringVar()



def show_users():
    fila = 0 
    print(fila)
    print('data resultado: ' + str(G8_database.data))
    for user in G8_database.data:
        registro = user
        print ('variable registro: ' + str(registro))
        
        print(str(fila) + ' - ' + str(user))
        fila = fila + 1 
    


def xxx():
    
    nombre_de_articulo = entry_pro.get()
    precio_unitario = entry_pre.get()
    id_area = entry_can.get()
  
   
    lol_db = G8_database.MyDatabase()
    lol_db.insert_db(nombre_de_articulo, precio_unitario, id_area)
    lol_db.read_db()
    show_users()
     
def leer():
    lol_db = G8_database.MyDatabase()
    lol_db.read_db()




frame1=Frame(frame_app, width=380, height=290, bg="tomato")
frame1.place(x=20, y =100)

frame2=Frame(frame_app, width=900, height=70, bg="SlateBlue1")
frame2.place(x=0, y =0)



label_pro = Label(frame2, 
              text="ARTICULOS",
              font=("Century Gothic", "33", "bold"),
              bg="SlateBlue1",
              fg="thistle2")
label_pro.place(x=343, y=3)

label_pro = Label(frame1, 
              text="PRODUCTO",
              font=("Century Gothic", "15", "bold"),
              fg="white",
              bg="tomato")
label_pro.place(x=13, y=60)

entry_pro = Entry(frame1, justify=LEFT, width=20, 
             font=("Century Gothic", "14"))
entry_pro.place(x=135, y=60)


label_pre = Label(frame1, 
              text="PRECIO",
              font=("Century Gothic", "15", "bold"),
              fg="white",
              bg="tomato")
label_pre.place(x=13, y=130)

entry_pre = Entry(frame1, justify=LEFT, width=20, 
             font=("Century Gothic", "14"))
entry_pre.place(x=135, y=130)

label_can = Label(frame1, 
              text="PRODUCTO",
              font=("Century Gothic", "15", "bold"),
              fg="white",
              bg="tomato")
label_can.place(x=13, y=200)

entry_can = Entry(frame1, justify=LEFT, width=20, 
             font=("Century Gothic", "14"))
entry_can.place(x=135, y=200)

button_agregar = Button(frame_app, text="Registrar pedido", 
                        font=("Century Gothic", "14", "bold"),
                        bg=("tomato"),
                        fg=("thistle2"),
                        border=1,
                        command=xxx)
button_agregar.place(x=50, y=460)

button_ag = Button(frame_app, text="Ver pedido", 
                        font=("Century Gothic", "14", "bold"),
                        bg=("tomato"),
                        fg=("thistle2"),
                        border=1,
                        command=leer)
button_ag.place(x=220, y=460)

window.mainloop()