Algoritmo ReservaSUM
	Escribir 'Bievendio al sitio de Reservas del SUM'
	Definir rta, reserva, cant1, cant2, cantmax, pagov, pagos, totalpago Como Entero
	Escribir 'Queres hacer una reserva?'
	Escribir '1.SI / 2.NO'
	Leer rta
	cantmax <- 10
	pagov <- 100
	pagos <- 150
	Si rta=1 Entonces
		Escribir 'Seleccionar Dia y Hora de su Reserva'
		Escribir '1: Viernes de 20:00 a 23:00'
		Escribir '2: Sabado de 18:00 a 24:00'
		Leer reserva
		Según reserva Hacer
			1:
				Escribir 'Ingrese la cantidad personas (Max:10)'
				Leer cant1
				Mientras cant1<cantmax Hacer
					Escribir 'Puede agregar mas personas'
					Leer adic1
					cant1 <- cant1+adic1
				FinMientras
			2:
				Escribir 'Ingrese la cantidad personas (Max:10)'
				Leer cant2
				Mientras cant2<cantmax Hacer
					Escribir 'Puede agregar mas personas'
					Leer adic2
					cant2 <- cant2+adic2
				FinMientras
			De Otro Modo:
				Escribir 'Su Reserva es Invalida'
		FinSegún
		Si reserva=1 Y cant1<=cantmax Entonces
			Escribir 'Reservo el SUM el Viernes de 20:00 a 23:00 para ', cant1, ' personas'
			totalpago <- cant1*pagov
			Escribir 'Debera abonar: ', totalpago
		SiNo
			Si reserva=2 Y cant2<=cantmax Entonces
				Escribir 'Reservo el SUM el Sabado de 18:00 a 24:00 para ', cant2, ' personas'
				totalpago <- cant2*pagos
				Escribir 'Debera abonar: ', totalpago
			SiNo
				Escribir 'Su Reserva es Invalida'
			FinSi
		FinSi
	SiNo
		Escribir 'Gracias por elegirnos'
	FinSi
FinAlgoritmo
