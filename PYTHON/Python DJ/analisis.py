import pandas as pd

# Leer archivo CSV
ds = pd.read_csv("ventas.csv")

# Mostrar datos en este caso de ventas.csv
print("Muestra todos los datos")
# print(ds) # Muestra todos datos


# print(ds.head(10)) # solo muestra 5 registros, si queremos ver los primeros 10 solamente agregar el numero dentro de parentesis head

# tO ESTO SIRVE PA...
# print("Informacion General")
# ds.info() 
# ✔ Ver si tus datos están completos
#✔ Detectar errores
#✔ Saber qué tipo de dato tiene cada columna
#✔ Prepararte para análisis o consultas

# print("Tipo de datos")
# print(ds.dtypes) #Muestra el tipo de dato de cada columna de tu DataFrame o documento

print("Estadisticas Basicas")
# print(ds.describe()) #es una funcion, maximo, minimo .describe() = estadísticas rápidas (promedio, mínimo, máximo, etc.)

# ✔ Ver rápido cómo están tus datos
# ✔ Saber precios promedio, máximos, mínimos
# ✔ Detectar valores raros (muy altos o muy bajos)

# print(ds.columns)
# Te muestra los nombres de todas las columnas de tu DataFrame. En este caso los campos

# print("Muestra los productos")
# print(ds["Producto"])
# Intenta mostrar una columna específica del DataFrame de un campo en este caso todos los productos


# ////////////--------------------------------------------///////////////////////////////#
# Trabajo de Prueba con Libreria Pandas

#Importa la librería para trabajar con datos
import pandas as pd

#Carga tu archivo CSV en una tabla (DataFrame)
df = pd.read_csv("ventas.csv")

#//////////-----------------//////
# Leyenda
# C = Comando
# 1,2,3 o etc... = Numero de comando 

#Comandos

# Mostrar TODOS los datos del archivo
#C1 print(df)

#Mostrar solo las primeras 5 filas
#C2 # print(df.head()) # En el parentesis se puede poner cantidad de info que quiera

#c3 # df.info() #Siempre hacerlo asi y no con u print pa evitar q me salga el none

#Resultado en la terminal
""" <class 'pandas.DataFrame'>                     #Sig Q esta trabajando con una tabla (DataFrame)
RangeIndex: 24 entries, 0 to 23                    #sig q hay 24 registros (filas) Van del índice 0 al 23 el cero siemre se cuenta acordate
Data columns (total 7 columns):                    #la tabla tiene 7 columnas, en este caso como campos

 #   Column           Non-Null Count  Dtype        #Nombre de la columna   #24 non-null	# sig No hay valores vacíos str	 # sig Tipo de dato (texto)

---  ------           --------------  -----
 0   Fecha            24 non-null     str
 1   Producto         24 non-null     str
 2   Categoria        24 non-null     str
 3   Cantidad         24 non-null     int64
 4   Precio_Unitario  24 non-null     float64
 5   Total            24 non-null     float64
 6   Tipo_Cliente     24 non-null     str
dtypes: float64(2), int64(1), str(4)                #Resumen de los tipos de datos que hya en la table
memory usage: 1.4 KB                                #Cuánto espacio ocupa la dataset en RAM no es tan importante ahorita, pero útil en datasets grandes osea en empresas
memory usage: 1.4 KB                                
None """

#c4 #print(df.dtypes)

"""
Variable	Tipo de dato	Tipo de variable

Fecha	        str	      Cualitativa (temporal)
Producto	    str       Cualitativa nominal
Categoria	    str	      Cualitativa nominal
Cantidad	   int64	  Cuantitativa discreta
Precio_Unitario	float64	  Cuantitativa continua
Total	      float64	  Cuantitativa continua
Tipo_Cliente	str	      Cualitativa nominal

Significados de los tipos de vraiables

Cualitativa nominal → texto sin orden (Producto, Categoria)
Cualitativa temporal → fechas (aunque esté como texto)
Cuantitativa discreta → números enteros (Cantidad)
Cuantitativa continua → números con decimales (Precio, Total) """

# c5 # print(df.describe())

#c6 print(df.columns) # Muestra los campos del dataset o de la tabla

# c7 print(df["Producto"])

#c8 print(df["Total"])


#----------------------------------------------------------------------------#

# Los productos que más se venden son aquellos que tienen mayor valor en la columna Cantidad.
#c9 print(df)
# Para ver en especiifcamente solo lo que nos interesa en este caso el producto mas venddo
# c10 print(df[["Producto", "Cantidad"]])

# Pa ver la categoria que tiene mas ventas
#c11 print(df[["Categoria", "Total"]])

# Pa ver que clientes compran mas 
# print(df[["Tipo_Cliente", "Cantidad"]])

