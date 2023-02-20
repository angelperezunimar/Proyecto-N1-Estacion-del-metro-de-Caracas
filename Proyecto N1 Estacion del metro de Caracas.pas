program Compra_de_boletos;
uses crt;
var 
a,c,d,e,f,g,h,i,j,k,l,cedula,precio,seleccion, seleccionlinea1, seleccionlinea2, seleccionlinea, csub, ndeboleto:integer;
nombre, apellido, boletos, si, tipodeviaje: char;
subestacionsalida, subestaciondestino, subestacionsalidatotal, subestaciondestinototal: string;

const 
b = 2;
p2 = 3;
p3 = 4;
p4 = 5;
p5 = 6;
p6 = 7;
p7 = 8;
p8 = 9;
p9 = 10;
p10 = 11;


BEGIN

subestacionsalidatotal := '';
subestaciondestinototal := '';
clrscr();
writeln('Bienvenido a la estacion de metro de Caracas');
writeln ('Desea comprar un boleto? teclee el numero 1, de ser el caso contrario teclee el numero 2');
readln (a);
	case a of
	1:  
		begin
			begin
			writeln ('ingrese sus datos');
			writeln ('cedula:');
			readln (cedula);
			writeln('Nombre:');
			readln(nombre);
			writeln ('apellido:');
			readln(apellido);
			clrscr();
			end;
				begin
					writeln ('Estos son los tipos de boletos disponibles, existen otras opciones en la seccion 2'); {existen gran variedad de boletos, cada uno con un color, precio y cobertura}
					writeln('|----------------------------|--------------|----------------------------|');
					writeln('|          Boleto            |     Color    |        Propiedades         |');
					writeln('|----------------------------|--------------|----------------------------|');
					writeln('|  a. Simple                 |   Amarillo   |     1 Viaje en metro       |');
					writeln('|----------------------------|--------------|----------------------------|');
					writeln('|                            |              |                            |');
					writeln('|  b. Integrado              |   Amarillo   |     1 Viaje en metro       |');
					writeln('|                            |              |   1 Viaje en metrobus      |');
					writeln('|----------------------------|--------------|----------------------------|');
					writeln('|  c. Ida y Vuelta           |   Amarillo   |     2 Viajes en metro      |');
					writeln('|----------------------------|--------------|----------------------------|');
					writeln('|                            |              |                            |');
					writeln('|  d. Ida y vuelta integrado |   Amarillo   |     2 Viajes en metro      |');
					writeln('|                            |              |   2 Viajes en metrobus     |');
					writeln('|----------------------------|--------------|----------------------------|');
					
					writeln('Si no encuentra su boleto deseado presione la tecla 1 y pulse [Enter], en caso contrario presione cualquier otro numero');
					readln(seleccion);
						
						if seleccion = 1 then
			
						begin
						clrscr();
						writeln('|----------------------------|--------------|----------------------------|');
						writeln('|  e. MultiAbono             |    Naranja   |    10 Viajes en metro      |');
						writeln('|----------------------------|--------------|----------------------------|');
						writeln('|                            |              |                            |');
						writeln('|  f. MultiAbono integrado   |    Naranja   |     10 Viajes en metro     |');
						writeln('|                            |              |   10 Viajes en metrobus    |');
						writeln('|----------------------------|--------------|----------------------------|');
						writeln('|  g. Estudiantil simple     |     Azul     |    10 Viajes en metro      |');
						writeln('|----------------------------|--------------|----------------------------|');
						writeln('|                            |              |                            |');
						writeln('|  h. Estudiantil integrado  |     Azul     |     10 Viajes en metro     |');
						writeln('|                            |              |   20 Viajes en metrobus    |');
						writeln('|----------------------------|--------------|----------------------------|');
						writeln('|                            |              |    20 Viajes en metro      |');
						writeln('|  i. Metrotarjeta           |     Rojo     |    30 Viajes en metro      |');
						writeln('|                            |              |    40 Viajes en metro      |');
						writeln('|----------------------------|--------------|----------------------------|');
						writeln('|                            |              | 20 Viajes(metro y metrobus)|');
						writeln('|  j. Metrotarjeta integrado |     Rojo     | 30 Viajes(metro y metrobus)|');
						writeln('|                            |              | 40 Viajes(metro y metrobus)|');
						writeln('|----------------------------|--------------|----------------------------|');
			            
			            writeln ('Seleccione el tipo de boleto que desea escribiendo la letra que lo clasifica y pulsando [Enter]');
			            
						
						end
						else writeln ('Seleccione el tipo de boleto que desea escribiendo la letra que lo clasifica y pulsando [Enter]');
												
						readln(boletos); {agregando boletos}
						clrscr();
			        
			        
					case boletos of
					'a': begin 
						writeln('El boleto simple tiene una cobertura de: 1 viaje en metro');
						writeln('cuantos boletos quiere comprar?');
						readln (c);
						precio:= c*b;
						if c>0 then
						writeln('su coste es de:',precio,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'b': begin
						writeln('El boleto integrado tiene una cobertura de: 1 viaje en metro o 1 viaje en metrobus');
						writeln('¿Que desea hacer?');
						writeln('a. 1 Viaje en metro');
						writeln('b. 1 Viaje en metrobus');
						readln(tipodeviaje);
						writeln ('cuantos boletos quiere comprar?');
						readln (c);
						precio:=c*p2;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'c':begin
						writeln('El boleto ida y vuelta tiene una cobertura de: 2 viajes en metro');
						writeln ('cuantos boletos quiere comprar?');
						readln (c);
						precio:=c*p3;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'd':begin 
						writeln ('el boleto ida y vuelta integrado tiene una cobertura de: 2 viajes en metro o 2 viajes en metrobus');
						writeln('¿Que desea hacer?');
						writeln('a. 2 Viajes en metro');
						writeln('b. 2 Viajes en metrobus');
						readln(tipodeviaje);
						writeln ('cuantos boletos quiere comprar?');
						readln (c);
						precio:=c*p4;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'e':begin
						writeln('El boleto multiabono tiene una cobertura de: 10 viajes en metro');
						writeln ('cuantos boletos desea comprar?');
						readln (c);
						precio:=c*p5;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln('hasta luego, tenga feliz dia.');
				
						end;
					'f':begin
						writeln('El boleto multiabono integrado tiene una cobertura de: 10 viajes en metro o 10 viajes en metrobus');
						writeln('¿Que desea hacer?');
						writeln('a. 10 Viajes en metro');
						writeln('b. 10 Viajes en metrobus');
						readln(tipodeviaje);
						writeln('cuantos boletos desea comprar?');
						readln (c);
						precio:=c*p6;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
				
						end;
					'g':begin
						writeln('El boleto estudiantil simple tiene una cobertura de: 10 viajes en metro');
						writeln('cuantos boletos quiere comprar?');
						readln(c);
						precio:=c*p7;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln('hasta luego, tenga feliz dia.');
						end;
					'h':begin
						writeln('El boleto estudiantil integrado tiene una cobertura de: 10 viajes en metro o 20 viajes en metrobus');
						writeln('¿Que desea hacer?');
						writeln('a. 10 Viajes en metro');
						writeln('b. 20 Viajes en metrobus');
						readln(tipodeviaje);
						writeln('cuantos boletos quiere comprar?');
						readln(c);
						precio:=c*p8;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln('hasta luego, tenga feliz dia');
						end;
					'i':begin
						writeln('El boleto metroTarjeta tiene una cobertura de: 20, 30, o 40 viajes');
						writeln('¿Que desea hacer?');
						writeln('a. 20 Viajes en metro');
						writeln('b. 30 Viajes en metro');
						writeln('c. 40 Viajes en metro');
						readln(tipodeviaje);
						writeln('cuantos boletos quiere comprar?');
						readln(c);
						precio:=c*p9;
						if c>0 then
						writeln('su coste es de:',precio,'-dolares')
						else
						writeln('hasta luego, tenga feliz dia');
						end;
					'j':begin
						writeln('El boleto metroTarjeta integrado tiene una cobertura de: 20,30 y 40 viajes en metro ademas de metrobus');
						writeln('a. 20 Viajes en metro');
						writeln('b. 30 Viajes en metro');
						writeln('c. 40 Viajes en metro');
						writeln('d. 20 Viajes en metrobus');
						writeln('e. 30 Viajes en metrobus');
						writeln('f. 40 Viajes en metrobus');
						readln(tipodeviaje);
						writeln ('cuantos boletos quiere comprar?');
						readln(c);
						precio:=c*p10;
						if c>0 then
						writeln ('su coste es de:',precio,'-dolares')
						else
						writeln('hasta luego tenga feliz dia'); {:D}
						end;
					end;
						clrscr();
						Writeln('Una vez elegido el tipo de boleto que desea comprar');
						Writeln('Debe seleccionar la linea en la cual desea viajar');
						Writeln('Las lineas seran mostradas a continuacion');
						Writeln('Presione [Enter] para visualizarlas ');
						readln();
						Writeln('');
						writeln ('Estas son las opciones de lineas disponibles, existen otras opciones en la seccion 2 y 3');
						Writeln('');
					begin
					writeln('Linea 1 (1)');
					writeln('|-----------------|------------------|-----------------|-----------------|');
					writeln('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
					writeln('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
					writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
					writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
					writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
					writeln('|-----------------|------------------|-----------------|-----------------|');
					writeln('');
					writeln('Linea 2 (2)');
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('');
					writeln('Linea 3 (3)');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('');
					
					writeln('Si no encuentra su linea deseada presione la tecla 1 [Enter], en caso contrario presione cualquier otro numero');
					readln(seleccionlinea1);
					
						if seleccionlinea1 = 1 then
						begin
						writeln('Linea 4 (4)');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
						writeln('|-Parque Central       |-Artigas               |-Mamera                |');
						writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/ Las      |');
						writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
						writeln('|-Capuchinos           |-Carapita              |                       |');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						writeln('Linea 5 (5)');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
						writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
						writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						writeln('Linea 6 (6)');
						writeln('|----------------------|-----------------------|');
						writeln('|-Zoologico            |-La Rinconada          |');
						writeln('|----------------------|-----------------------|');
						writeln('');
						
						writeln('Si no encuentra su linea deseada presione la tecla 2 [Enter], en caso contrario presione cualquier otro numero');
						readln(seleccionlinea2);
						end;
							if seleccionlinea2 = 2 then 
							begin
							writeln('Linea 7 (7)');
							writeln('|--------------------|---------------------|--------------------------|');
							writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
							writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
							writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
							writeln('|-La Hoyada          |-INCES               |                          |');	
							writeln('|--------------------|---------------------|--------------------------|');
							writeln('');
							writeln('CLABETREN (8)');
							writeln('|--------------------|---------------------|--------------------------|');
							writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
							writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
							writeln('|--------------------|---------------------|--------------------------|');
							writeln('');
							writeln ('Seleccione la linea que desea escribiendo el numero que lo clasifica y pulsando [Enter]');
							end
					
						else writeln ('Seleccione la linea que desea escribiendo el numero que lo clasifica y pulsando [Enter]');
						
							readln(seleccionlinea);
							clrscr();	
							ndeboleto := 0										
					end;
					
					case seleccionlinea of
					1:begin
					  
					  writeln('Su linea seleccionada ha sido la "LINEA 1"');
					  writeln('Estas son sus estaciones:');
					  writeln('|-----------------|------------------|-----------------|-----------------|');
					  writeln('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
					  writeln('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
					  writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
					  writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					  writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
					  writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
					  writeln('|-----------------|------------------|-----------------|-----------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|-----------------|------------------|-----------------|-----------------|');
						writeln('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
						writeln('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
						writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
						writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					    writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
						writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
						writeln('|-----------------|------------------|-----------------|-----------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
						
						
					 end;
					2:begin
					  writeln('Su linea seleccionada ha sido la "LINEA 2"');
					  writeln('Estas son sus estaciones:');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					  writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					  writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					  writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|--------------------|---------------------|--------------------------|');
					    writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					    writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					    writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					    writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					    writeln('|--------------------|---------------------|--------------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
					
					  end;
					  
					3:begin
					  writeln('Su linea seleccionada ha sido la "LINEA 3"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					  writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					  writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|----------------------|-----------------------|-----------------------|');
					    writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					    writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					    writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					    writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
					
					  end;
					  
					4:begin
					  writeln('Su linea seleccionada ha sido la "LINEA 4"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
					  writeln('|-Parque Central       |-Artigas               |-Mamera                |');
					  writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/ Las      |');
				      writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
					  writeln('|-Capuchinos           |-Carapita              |                       |');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
						writeln('|-Parque Central       |-Artigas               |-Mamera                |');
						writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/ Las      |');
						writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
						writeln('|-Capuchinos           |-Carapita              |                       |');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
					
					  end;
					  
					5:begin
					  writeln('Su linea seleccionada ha sido la "LINEA 5"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
					  writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
					  writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
						writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
						writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
					
					  end;
					  
					  
					6:begin
					  writeln('Su linea seleccionada ha sido la "LINEA 6"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|');
					  writeln('|-Zoologico            |-La Rinconada          |');
					  writeln('|----------------------|-----------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|----------------------|-----------------------|');
					    writeln('|-Zoologico            |-La Rinconada          |');
					    writeln('|----------------------|-----------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
					
					  end;
					  
					7:begin
					  writeln('Su linea seleccionada ha sido la "LINEA 7"');
					  writeln('Estas son sus estaciones:');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
					  writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
					  writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
					  writeln('|-La Hoyada          |-INCES               |                          |');	
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|--------------------|---------------------|--------------------------|');
					    writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
					    writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
					    writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
					    writeln('|-La Hoyada          |-INCES               |                          |');	
					    writeln('|--------------------|---------------------|--------------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
					
					
					  end;
					  
					8:begin
					  writeln('Su linea seleccionada ha sido la "CLABETREN"');
					  writeln('Estas son sus estaciones:');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
					  writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  writeln('La cantidad de boletos comprados son ',c);
					  writeln('');
					  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
					  writeln('');
					  writeln('Presione [Enter] para iniciar el proceso');
					  writeln('');
					  Readln();
					  
					  
						repeat 
						begin
						clrscr();
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|--------------------|---------------------|--------------------------|');
					    writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
						writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
						writeln('|--------------------|---------------------|--------------------------|');
						writeln('');
						writeln('Para el boleto N°', ndeboleto);
						writeln('');
						writeln('Seleccione la sub estación de salida');
						readln(subestacionsalida);
						writeln('Seleccione la sub estación de destino');
						readln(subestaciondestino);
						writeln('Estaciones asignadas correctamente');
						writeln('');
						writeln('Siguiente boleto');
						writeln('');
						c := c - 1;
						subestacionsalidatotal := subestacionsalidatotal + ' -' + subestacionsalida;
						
						subestaciondestinototal := subestaciondestinototal + ' -' + subestaciondestino;
						
						end
											  
						until c = 0 ;
						
						writeln('Los boletos han sido asignados con sus subestaciones correctamente');
						
					
					
					  end;
					
						
					end;			
						
						  writeln(subestacionsalidatotal,', ', subestaciondestinototal);
						
				END;

		end;
	end;

end.
