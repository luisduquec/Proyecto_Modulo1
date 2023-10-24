Algoritmo ProyectoModulo1
	NuevoProducto = "Si"
	Mientras NuevoProducto = "Si" Hacer

	//Ingresar Precio Original (PrecioBase)
	Escribir "Ingrese el Precio Original del Producto:"
	Leer PrecioBase
	
	//Ingresar Descuento (Dcto)
	Escribir "Ingrese el Descuento como un número comprendido entre 0 y 100"
	Leer Dcto
	
	//Ingresar impuesto (IVA)
	Escribir "Ingrese el impuesto como un número comprendido entre 0 y 100:"
	Leer IVA
	
	//Ingresar Cantidad del Producto
	Escribir "Ingrese la cantidad del Producto. Recuerde que tiene un 5% por cada par de artículos"
	Leer Cant
	
	//Ingresar Peso del Paquete
	Escribir "Ingrese el peso del paquete en Kg (Recuerde que son 2USD por cada Kg):"
	Leer Peso
	
	//Ingresar destino
	Escribir "Ingrese el destino del envío, Por el momento tenemos las siguientes tarifas:"
	Escribir "New York - 10 USD"
	Escribir "Hong Kong - 30 USD"
	Escribir "Buenos Aires - 50 USD"
	Escribir "Madrid - 70 USD"
	Escribir "India - 80 USD"
	Escribir "Cualquier otra cuidad - 200"
	Leer Destino
	
	//Operaciones
	Dcto_calc <- PrecioBase * (Dcto/100)
	IVA_calc <- (PrecioBase - Dcto_Calc) * (IVA/100)
	
	Dcto_Cant <- trunc(Cant/2) * 5
	Dcto_Cant_cal <- (PrecioBase - Dcto_calc + IVA_calc)  * Dcto_Cant/100
	
	Segun Destino Hacer
		"New York":
			CostoFijo = 10
		"Hong Kong":
			CostoFijo = 30
		"Buenos Aires":
			CostoFijo = 50
		"Madrid":
			CostoFijo = 70
		"India":
			CostoFijo = 80
		De Otro Modo:
			CostoFijo = 200
	Fin Segun
	
	Costo_Peso = (2 * Peso)
	Destino_calc <- CostoFijo + Costo_Peso
	CostoTotal <- (PrecioBase * (1 - Dcto/100) * (1 + IVA/100) * (1 - Dcto_Cant/100) * Cant) + Destino_calc
	
	
	Escribir "Precio Original: ", PrecioBase
	Escribir "Descuento ", "(", Dcto, "%)", ": -", Dcto_calc
	Escribir "Impuesto ", "(", IVA, "%)", ": +", IVA_calc
	Escribir "Descuento por cantidad: ", "(", Dcto_Cant, ")", ": -", Dcto_Cant_cal
	Escribir "Costo de Envio (", "Costo Fijo: ", CostoFijo, " Costo Peso: ", Costo_Peso, "): ", Destino_calc
	Escribir "Costo Total: ", CostoTotal
	
	Escribir "Desea llevar otro producto? Si/No"
	Leer NuevoProducto
	FinMientras
	Escribir "Proceso terminado"

FinAlgoritmo

