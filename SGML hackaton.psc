Algoritmo SGML
	rol <- ''
	operario <- ''
	fecha <- ''
	ticket <- 0
	Repetir
		Escribir (' Sistema de gestion de mantenimiento locativo ( SGML)')
		Escribir (' Tipo de solicitante (Profesor,Funcionario o Estudiante autorizado)')
		Leer rol
		Si rol='profesor' O solicitante='funcionario' O solicitante='estudiante autorizado' Entonces
			ticket <- ticket+1
			Escribir (rol+' ingrese los siguientes datos por favor ')
			Escribir (' ')
			Escribir (' Sede (Bloque-Piso-Aula)---> ')
			Leer S
			Escribir (' ')
			Escribir (' Equipo a realizar el mantenimiento ---> ')
			Leer E
			Escribir (' ')
			Escribir (' Tipo de mantenimiento (Preventivo o Correctivo)---> ')
			Leer T
			Escribir (' ')
			Escribir (' Descripción del problema ---> ')
			Leer D
			Escribir (' ')
			Escribir (' Su ticket a sido creado exitosamente, Numero de ticket -->'+ConvertirATexto(ticket))
			Escribir (' ')
		SiNo
			Escribir (' Acceso denegado')
		FinSi
	Hasta Que rol='profesor' O solicitante='funcionario' O solicitante='estudiante autorizado'
	Escribir (' ')
	 Repetir
			Escribir (' Ingrese su rol ---> ')
			Leer rol
			Si rol='admin' Entonces
				Escribir ('Oficina de mantenimiento')
				Escribir (' Ticket # '+ConvertirATexto(ticket))
				Escribir (' ')
				Escribir (' '+S)
				Escribir (' ')
				Escribir (' '+E)
				Escribir (' ')
				Escribir (' '+T)
				Escribir (' ')
				Escribir (' '+D)
				Escribir (' ')
				Escribir (' Validación (Si o No) ---> ')
				Leer V
				Si V='si' Entonces
					Escribir (' ')
					Escribir (' Clasifique la prioridad de este ticket(Baja ,Media o Critica)')
					Leer P
				SiNo
					Escribir (' Ticket cerrado')
				FinSi
				Repetir
					Escribir (' Ingrese su rol ---> ')
					Leer rol
					Si rol='jefe' Entonces
						Escribir (' asigne una fecha para el mantenimiento ---> ')
						Leer fecha
						Escribir (' Asigne un operario para el mantenimiento ---> ')
						Leer operario
					SiNo
						Escribir ('Acceso denegado')
					FinSi
				Hasta Que rol='jefe'
				Repetir
					Escribir (' Ingrese su rol ---> ')
					Leer rol
					Si rol='operario' Entonces
						Escribir (' Aceptar tarea (si o no) ---> ')
						Leer tarea
						Si tarea='si' Entonces
							Repetir
								Escribir (' Tipo de solicitante (Profesor,Funcionario o Estudiante autorizado)')
								Leer rol
								Si rol='profesor' O solicitante='funcionario' O solicitante='estudiante autorizado' Entonces
									Escribir (' Su ticket #'+ConvertirATexto(ticket)+' Ha sido validado con una prioridad '+P+' para el dia '+fecha+' con el operario '+operario)
								FinSi
							Hasta Que rol='profesor'
							Repetir
								Escribir (' Ingrese su rol ---> ')
								Leer rol
								Si rol='operario' Entonces
									Escribir (' Su tarea ha finalizado (si o no)---> ')
									Leer finalizacion
									Si finalizacion='si' Entonces
										Escribir (' Registre los insumos utilizados --->')
										Leer insumos
										Escribir (' Regsitre observaciones adicionales --->')
										Leer observaciones
									FinSi
								FinSi
							Hasta Que rol='operario'
						FinSi
					SiNo
						Escribir ('Acceso Denegado')
					FinSi
				Hasta Que rol='operario'
			SiNo
				Escribir ('Acceso denegado')
			FinSi
			Escribir (' Tipo de solicitante (Profesor,Funcionario o Estudiante autorizado)')
			Leer rol
			Si rol='profesor' O solicitante='funcionario' O solicitante='estudiante autorizado' Entonces
				Escribir (' Su ticket #'+ConvertirATexto(ticket)+' ha sido solucionado (si o no) --->')
				Leer solucionado
				Si solucionado='si' Entonces
					Escribir (' Su ticket #'+ConvertirATexto(ticket)+' ha sido cerrado, gracias por preferirnos!')
				SiNo
					Escribir (' Su ticket #'+ConvertirATexto(ticket)+' ha sido reabierto')
				FinSi
			SiNo
				Escribir ('Acceso Denegado')
			FinSi
	Hasta Que solucionado='si'
		Escribir ("##################################################");
		Escribir ("#  				Reporte General                  #");
		Escribir ("#  Operario: "+ operario + "                     #");
		Escribir ("#  Fecha: " + fecha + "                          #");
		Escribir ("#  Tipo de mantenimiento: " + T + "              #");
		Escribir ("#  Prioridad: " + P + "                          #");
		Escribir ("#  Descripción del servicio: " + D + "           #");
		Escribir ("#  Objeto de mantenimiento: " + E + "            #");
		Escribir ("#  Sede: " + S + "                               #");
		Escribir ("#  Solucionado: " + solucionado + "              #");
		Escribir ("##################################################");
FinAlgoritmo