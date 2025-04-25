Algoritmo ListaSuper
	Definir cantProductos, contador_linea, contador_aceptados, contador_rechazados, energia, carbohidratos, prc_carbohidratos, fibras, prc_fibras, sodio, prc_sodio,  grasas, prc_grasas, i como Entero;
	Definir seguir Como Logico;
	Escribir "Ingrese la cantidad de productos de la lista:";
	Leer cantProductos;
	
	contador_aceptados <- 0;
	Para i<-1 Hasta cantProductos Hacer
		
		seguir <- Verdadero;
		contador_linea <- 1;
		Mientras seguir Hacer
			
			Segun contador_linea Hacer
				1:
					Escribir "Ingrese la energía del producto (kcal c/100gr):";
					Leer energia;
					Si energia > 200 O energia < 100 Entonces
						seguir <- !seguir;
					SiNo 
						contador_linea <- contador_linea + 1;
					FinSi
				2:
					Escribir "Ingrese los carbohidratos del producto (c/100gr):";
					Leer carbohidratos;
					prc_carbohidratos <- (carbohidratos/100) * 100;
					Si prc_carbohidratos < 0 O prc_carbohidratos > 15 Entonces
						seguir <- !seguir;
					SiNo 
						contador_linea <- contador_linea + 1;
					FinSi
				3:
					Escribir "Ingrese las grasas  del producto (c/100gr)::";
					Leer grasas;
					prc_grasas <- (grasas/100) * 100;
					Si prc_grasas < 1 O prc_grasas > 13 Entonces
						seguir <- !seguir;
					SiNo 
						contador_linea <- contador_linea + 1;
					FinSi
				4:
					Escribir "Ingrese las fibras del producto (c/100gr):";
					Leer fibras;
					prc_fibras <- (fibras/100) * 100;
					Si prc_fibras < 1 O prc_fibras > 13 Entonces
						seguir <- !seguir;
					SiNo
						contador_linea <- contador_linea + 1;
					FinSi
				5:
					Escribir "Ingrese el sodio del producto (c/100gr):";
					Leer sodio;
					prc_sodio <- (sodio/100) * 100;
					Si prc_sodio < 0 O prc_sodio > 2 Entonces
						seguir <- !seguir;
					SiNo
						contador_aceptados <- contador_aceptados + 1;
						seguir <- !seguir;
					FinSi
			FinSegun
		FinMientras
		Escribir "Nuevo producto!";
	FinPara
	contador_rechazados <- cantProductos - contador_aceptados;
	Escribir "El total de productos rechazados son:", contador_rechazados;
	Escribir "El total de productos aceptados son:", contador_aceptados;
FinAlgoritmo
