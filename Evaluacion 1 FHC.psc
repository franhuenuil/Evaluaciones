Proceso  Evaluacion01 //Francisca Huenuil Campos
	
	Repetir
	Borrar Pantalla
	
	Escribir "Introduzca una Opcion"
	Escribir "1. Secuencial"
	Escribir "2. Condicional Si entonces"
	Escribir "3. Condicional Si entonces anidado"
	Escribir "4. Condicional Segun"
	Escribir "5. Repetitiva Mientras"
	Escribir "6. Repetitiva Repetir"
	Escribir "7. Repetitiva Para"
	Escribir "8. Arreglo Simple"
	Escribir "9. Arreglo Bidimensional"
	Escribir "10. Salir"
	Leer opcion
	
	Segun opcion Hacer
		
		"1": Secuencial()
		"2": Condicional_si_entonces()
		"3": Condicional_si_entonces_anidado()
		"4": Segunn()
		"5": Mientrass()
		"6": RepetirHasta()
		"7": Para_For()
		"8": Arreglo()
		"9": ArregloBidemensional()
			
	FinSegun;
	
Hasta Que opcion="10"
	
FinProceso

//1. Secuencia

SubProceso Secuencial
	Definir Promedio Como Real
	Definir Suma, num1,num2,num3 Como Entero
	Escribir "Ingrese tres numeros: "
	Leer num1,num2,num3;
	Escribir "Los valores ingresados son: "
	Escribir num1," ",num2," ",num3
	Suma = num1+num2+num3
	Promedio = (Suma/3)
	Escribir "El promedio de los numeros ingresados es:",Promedio
	ESPERAR TECLA
FinSubProceso

//2. Condicional Si Entonces

SubProceso Condicional_Si_Entonces
	Definir nombre, genero como caracter

	genero = femenino 
	genero = masculino
	
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su genero"
	Leer genero
	
	Si genero = femenino Entonces
		Escribir ,nombre, "Pase al baño de mujeres"
	FinSi
	Si genero = masculino Entonces
		Escribir ,nombre, "Pase al baño de hombre"
	FinSi
	ESPERAR TECLA
FinSubProceso

//3. Condicional Si Entonces Anidado

SubProceso Condicional_Si_Entonces_Anidado
	Definir nombre, genero, op como caracter
	
	genero = femenino 
	genero = masculino
	op = wc 
	op = ducha
	
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su genero"
	Leer genero
	Escribir "Desea utilizar wc o ducha"
	Leer op
	
	Si genero = femenino y op = wc entonces
	Escribir ,nombre, "Pase al baño de mujeres, son 250 pesos"
	SiNo
		Si genero = femenino y op = ducha entonces
		Escribir ,nombre, "Pase al baño de mujeres, son 2500 pesos"
			Si genero = masculino y op = wc entonces
			Escribir ,nombre, "Pase al baño de hombres, son 250 pesos"
			SiNo
				Si genero = masculino y op = ducha entonces
				Escribir ,nombre, "Pase al baño de hombres, son 2500 pesos"
				FinSi
			FinSi
		FinSi
	FinSi
	ESPERAR TECLA
FinSubProceso

//4. Condicional Segun

SubProceso Segunn
	Escribir "Ingrese un numero entre l y  10"
	Leer opcion
	
	Segun opcion Hacer
		"1": Escribir "Ingreso el numero uno"
		"2": Escribir "Ingreso el numero dos"
		"3": Escribir "Ingreso el numero tres"
		"4": Escribir "Ingreso el numero cuatro"
		"5": Escribir "Ingreso el numero cinco"
		"6": Escribir "Ingreso el numero seis"
		"7": Escribir "Ingreso el numero siete"
		"8": Escribir "Ingreso el numero ocho"
		"9": Escribir "Ingreso el numero nueve"
		"10":Escribir "Ingreso el numero diez"
			
		De Otro Modo:
			Escribir "Opcion invalida"
	FinSegun 
	ESPERAR TECLA
FinSubProceso

//5. Repetitiva Mientras

SubProceso Mientrass
	Definir n, Promedio,suma como real
	Promedio = suma/numeros_ingresados
	Escribir "Ingrese numeros: "
	Leer numeros_ingresados
	Mientras numeros_ingresados !=0 Hacer
		Mostrar numeros_ingresados
		Escribir "El promedio es: " ,Promedio 
	FinMientras
	ESPERAR TECLA
FinSubProceso

//6. Repetitiva Repetir

SubProceso RepetirHasta
	Definir nombre Como caracter
	definir cont como entero
	cont = 0
	
	Repetir  
		escribir"Ingrese nombres con j"
		leer nombre
		cont = cont + 1
	Hasta Que nombre = "juan"
	
	Escribir "¡GANASTE!"
	Escribir "Lo intentaste: ", cont, " para ganar"
	ESPERAR TECLA
FinsubProceso

//7. Repetitiva Para

SubProceso Para_For
	
	ESPERAR TECLA	
FinSubProceso

//8. Arreglos Simples

SubProceso Arreglo
	
	ESPERAR TECLA	
FinSubProceso

//9. Arreglos Bidimensional

SubProceso ArregloBidemensional
	
	ESPERAR TECLA	
FinSubProceso

