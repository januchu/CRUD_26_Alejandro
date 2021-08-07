import mysql.connector


data=[]

class MyDatabase:
    def open_connection(self):
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_lol")
        return connection

    def insert_db(self, nombre_de_articulo, precio_unitario, id_area):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_articulos( `NOMBRE DE ARTICULO`, `PRECIO UNITARIO`, `ID_AREA`) VALUES (%s,%s,%s)"
        data = ( nombre_de_articulo, precio_unitario, id_area)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()

    def read_db(self):
            my_connection = self.open_connection()
            cursor = my_connection.cursor()
            query = "SELECT `NOMBRE DE ARTICULO`, `PRECIO UNITARIO`, `ID_AREA` FROM TBL_ARTICULOS"
            cursor.execute(query)
            registro = 0
            for fila in cursor:
                data.append(fila) 
                print('for - ' + str(registro) +" - "+ str(data[registro]))
                registro = registro + 1 
            
            my_connection.close()     
            #print(data)