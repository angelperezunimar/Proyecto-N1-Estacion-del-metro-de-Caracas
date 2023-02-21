program compra_de_boletos;
uses crt;
var 
a,c,d,e,f,g,h,i,j,k,l,precio,seleccion, seleccionlinea1,cedula2,codigobanco,numtelefono,pp,vuelto, seleccionlinea2, seleccionlinea, csub, ndeboleto:integer;
 boletos,nombre,apellido,si, tipodeviaje: char;
subestacionsalida, subestaciondestino, subestacionsalidatotal, subestaciondestinototal: string;
cedula: real;

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
textcolor(green);
	gotoxy(35,1);writeln('============================================');
gotoxy(35,2);writeln('Bienvenido a la estacion de metro de Caracas');
	gotoxy(35,3);writeln('============================================');
write ('Desea comprar un boleto? teclee el numero 1, de ser el caso contrario teclee el numero 2:');
readln (a);
	case a of
	1:  
		begin
			begin
			textcolor(white);
			gotoxy(10,6);writeln ('***** Porfavor ingrese sus datos *****');
			repeat
			write ('-Cedula:');
			readln (cedula);
			if cedula<=0 then writeln('cedula invalida, intente nuevamente');
			until cedula>0;
			write('--Nombre:');
			readln(nombre);
			write('---apellido:');
			readln(apellido);
			clrscr();
			end;
				begin
					textcolor(green);
					gotoxy(14,1);writeln ('////Estos son los tipos de boletos disponibles, existen otras opciones en la seccion 2////'); {existen gran variedad de boletos, cada uno con un color, precio y cobertura}
					gotoxy(20,3);writeln('|----------------------------|--------------|----------------------------|');
					gotoxy(20,4);writeln('|          Boleto            |     Color    |        Propiedades         |');
					gotoxy(20,5);writeln('|----------------------------|--------------|----------------------------|');
					gotoxy(20,6);writeln('|  a. Simple                 |   Amarillo   |     1 Viaje en metro       |');
					gotoxy(20,7);writeln('|----------------------------|--------------|----------------------------|');
					gotoxy(20,8);writeln('|                            |              |                            |');
					gotoxy(20,9);writeln('|  b. Integrado              |   Amarillo   |     1 Viaje en metro       |');
					gotoxy(20,10);writeln('|                            |              |   1 Viaje en metrobus      |');
					gotoxy(20,11);writeln('|----------------------------|--------------|----------------------------|');
					gotoxy(20,12);writeln('|  c. Ida y Vuelta           |   Amarillo   |     2 Viajes en metro      |');
					gotoxy(20,13);writeln('|----------------------------|--------------|----------------------------|');
					gotoxy(20,14);writeln('|                            |              |                            |');
					gotoxy(20,15);writeln('|  d. Ida y vuelta integrado |   Amarillo   |     2 Viajes en metro      |');
					gotoxy(20,16);writeln('|                            |              |   2 Viajes en metrobus     |');
					gotoxy(20,17);writeln('|----------------------------|--------------|----------------------------|');
					textcolor(white);
					writeln('Si no encuentra su boleto deseado presione la tecla 1 y pulse [Enter], en caso contrario presione cualquier otro numero');
					readln(seleccion);
						
						if seleccion = 1 then
			
						begin
						clrscr();
						textcolor(green);
						gotoxy(20,1);writeln('|----------------------------|--------------|----------------------------|');
						gotoxy(20,2);writeln('|  e. MultiAbono             |    Naranja   |    10 Viajes en metro      |');
						gotoxy(20,3);writeln('|----------------------------|--------------|----------------------------|');
						gotoxy(20,4);writeln('|                            |              |                            |');
						gotoxy(20,5);writeln('|  f. MultiAbono integrado   |    Naranja   |     10 Viajes en metro     |');
						gotoxy(20,6);writeln('|                            |              |   10 Viajes en metrobus    |');
						gotoxy(20,7);writeln('|----------------------------|--------------|----------------------------|');
						gotoxy(20,8);writeln('|  g. Estudiantil simple     |     Azul     |    10 Viajes en metro      |');
						gotoxy(20,9);writeln('|----------------------------|--------------|----------------------------|');
						gotoxy(20,10);writeln('|                            |              |                            |');
						gotoxy(20,11);writeln('|  h. Estudiantil integrado  |     Azul     |     10 Viajes en metro     |');
						gotoxy(20,12);writeln('|                            |              |   20 Viajes en metrobus    |');
						gotoxy(20,13);writeln('|----------------------------|--------------|----------------------------|');
						gotoxy(20,14);writeln('|                            |              |    20 Viajes en metro      |');
						gotoxy(20,15);writeln('|  i. Metrotarjeta           |     Rojo     |    30 Viajes en metro      |');
						gotoxy(20,16);writeln('|                            |              |    40 Viajes en metro      |');
						gotoxy(20,17);writeln('|----------------------------|--------------|----------------------------|');
						gotoxy(20,18);writeln('|                            |              | 20 Viajes(metro y metrobus)|');
						gotoxy(20,19);writeln('|  j. Metrotarjeta integrado |     Rojo     | 30 Viajes(metro y metrobus)|');
						gotoxy(20,20);writeln('|                            |              | 40 Viajes(metro y metrobus)|');
						gotoxy(20,21);writeln('|----------------------------|--------------|----------------------------|');
			            textcolor(white);
			            writeln ('Seleccione el tipo de boleto que desea escribiendo la letra que lo clasifica y pulsando [Enter]');
			            
						
						end
						else writeln ('Seleccione el tipo de boleto que desea escribiendo la letra que lo clasifica y pulsando [Enter]');
												
						readln(boletos); {agregando boletos}
						clrscr();
			        
			        
					case boletos of
					'a': begin 
						gotoxy(35,1);writeln('=========================================================');
						gotoxy(35,2);writeln('El boleto simple tiene una cobertura de: 1 viaje en metro');
						gotoxy(35,3);writeln('=========================================================');
						gotoxy(5,4);write('Indique cuantos boletos desea comprar:');
						readln (c);
						precio:= c*b;
						if c>0 then
						writeln('///Su coste es de:',precio,'-dolares///')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'b': begin
						gotoxy(20,1);writeln('==================================================================================');
						gotoxy(20,2);writeln('El boleto integrado tiene una cobertura de: 1 viaje en metro o 1 viaje en metrobus');
						gotoxy(20,3);writeln('==================================================================================');
						gotoxy(5,5);writeln('Que desea hacer?');
						writeln('a. 1 Viaje en metro');
						writeln('b. 1 Viaje en metrobus');
						readln(tipodeviaje);
						gotoxy(10,9);write ('///Indique cuantos boletos desea comprar///:');
						readln (c);
						precio:=c*p2;
						if c>0 then  writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'c':begin
					    gotoxy(35,1);writeln('================================================================');
						gotoxy(35,2);writeln('El boleto ida y vuelta tiene una cobertura de: 2 viajes en metro');
						gotoxy(35,3);writeln('================================================================');
						gotoxy(5,5);write ('///Indique cuantos boletos desea comprar///:');
						readln (c);
						precio:=c*p3;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln ('Hasta luego, tenga feliz dia.');
						end;
					'd':begin 
						writeln('==================================================================================================');
						writeln ('El boleto ida y vuelta integrado tiene una cobertura de: 2 viajes en metro o 2 viajes en metrobus');
						writeln('==================================================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
						writeln('a. 2 Viajes en metro');
						writeln('b. 2 Viajes en metrobus');
						readln(tipodeviaje);
						gotoxy(10,9);write ('///Indique cuantos boletos desea comprar///:');
						readln (c);
						precio:=c*p4;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'e':begin
						gotoxy(35,1);writeln('===============================================================');
						gotoxy(35,2);writeln('El boleto multiabono tiene una cobertura de: 10 viajes en metro');
						gotoxy(35,3);writeln('===============================================================');
						gotoxy(5,5);write ('///Indique cuantos boletos desea comprar///:');
						readln (c);
						precio:=c*p5;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln('hasta luego, tenga feliz dia.');
				
						end;
					'f':begin
						gotoxy(15,1);writeln('=================================================================================================');
						gotoxy(15,2);writeln('El boleto multiabono integrado tiene una cobertura de: 10 viajes en metro o 10 viajes en metrobus');
						gotoxy(15,3);writeln('=================================================================================================');
						gotoxy(5,5);writeln('Que desea hacer?');
						writeln('a. 10 Viajes en metro');
						writeln('b. 10 Viajes en metrobus');
						readln(tipodeviaje);
						gotoxy(10,9);write ('///Indique cuantos boletos desea comprar///:');
						readln (c);
						precio:=c*p6;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
				
						end;
					'g':begin
						gotoxy(30,1);writeln('=======================================================================');
						gotoxy(30,2);writeln('El boleto estudiantil simple tiene una cobertura de: 10 viajes en metro');
						gotoxy(30,3);writeln('=======================================================================');
						gotoxy(10,5);write ('///Indique cuantos boletos desea comprar///:');
						readln(c);
						precio:=c*p7;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln('hasta luego, tenga feliz dia.');
						end;
					'h':begin
						gotoxy(15,1);writeln('==================================================================================================');
						gotoxy(15,2);writeln('El boleto estudiantil integrado tiene una cobertura de: 10 viajes en metro o 20 viajes en metrobus');
						gotoxy(15,3);writeln('==================================================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
						writeln('a. 10 Viajes en metro');
						writeln('b. 20 Viajes en metrobus');
						readln(tipodeviaje);
						gotoxy(10,9);write ('///Indique cuantos boletos desea comprar///:');
						readln(c);
						precio:=c*p8;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln('hasta luego, tenga feliz dia');
						end;
					'i':begin
						gotoxy(30,1);writeln('==================================================================');
						gotoxy(30,2);writeln('El boleto metroTarjeta tiene una cobertura de: 20, 30, o 40 viajes');
						gotoxy(30,3);writeln('==================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
						writeln('a. 20 Viajes en metro');
						writeln('b. 30 Viajes en metro');
						writeln('c. 40 Viajes en metro');
						readln(tipodeviaje);
						gotoxy(10,10);write ('///Indique cuantos boletos desea comprar///:');
						readln(c);
						precio:=c*p9;
						if c>0 then
						writeln('Su coste es de:',precio,'-Dolares')
						else
						writeln('hasta luego, tenga feliz dia');
						end;
					'j':begin
						gotoxy(15,1);writeln('======================================================================================================');
						gotoxy(15,2);writeln('El boleto metroTarjeta integrado tiene una cobertura de: 20,30 y 40 viajes en metro ademas de metrobus');
						gotoxy(15,3);writeln('======================================================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
						writeln('a. 20 Viajes en metro');
						writeln('b. 30 Viajes en metro');
						writeln('c. 40 Viajes en metro');
						writeln('d. 20 Viajes en metrobus');
						writeln('e. 30 Viajes en metrobus');
						writeln('f. 40 Viajes en metrobus');
						readln(tipodeviaje);
						gotoxy(10,13);write ('///Indique cuantos boletos desea comprar///:');
						readln(c);
						precio:=c*p10;
						if c>0 then
						writeln ('Su coste es de:',precio,'-Dolares')
						else
						writeln('hasta luego tenga feliz dia'); {:D}
						end;
					end; 
						writeln('===================================================');
						Writeln('Una vez elegido el tipo de boleto que desea comprar');
						Writeln('Debe seleccionar la linea en la cual desea viajar');
						Writeln('Las lineas seran mostradas a continuacion');
						Writeln('Presione [Enter] para visualizarlas ');
						writeln('===================================================');
						readln();
						Writeln('');
						clrscr();
						gotoxy(5,1);writeln ('///Estas son las opciones de lineas disponibles, existen otras opciones en la seccion 2 y 3///');
						Writeln('');
					begin
					textcolor(green);
					gotoxy(45,3);writeln('Linea 1 (1)');
					gotoxy(15,4);writeln ('|-----------------|------------------|-----------------|-----------------|');
					gotoxy(15,5);writeln ('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
					gotoxy(15,6);writeln ('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
					gotoxy(15,7);writeln ('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
					gotoxy(15,8);writeln ('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					gotoxy(15,9);writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
					gotoxy(15,10);writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
					gotoxy(15,11);writeln('|-----------------|------------------|-----------------|-----------------|');
					writeln('');
					gotoxy(45,12);writeln('Linea 2 (2)');
					gotoxy(15,13);writeln('|--------------------|---------------------|--------------------------|');
					gotoxy(15,14);writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					gotoxy(15,15);writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					gotoxy(15,16);writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					gotoxy(15,17);writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					gotoxy(15,18);writeln('|--------------------|---------------------|--------------------------|');
					writeln('');
					gotoxy(45,19);writeln('Linea 3 (3)');
					gotoxy(15,20);writeln('|----------------------|-----------------------|-----------------------|');
					gotoxy(15,21);writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					gotoxy(15,22);writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					gotoxy(15,23);writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					gotoxy(15,24);writeln('|----------------------|-----------------------|-----------------------|');
					writeln('');
					textcolor(white);
					writeln('Si no encuentra su linea deseada presione la tecla 1 [Enter], en caso contrario presione cualquier otro numero');
					readln(seleccionlinea1);
					
						if seleccionlinea1 = 1 then
						begin
						clrscr();
						textcolor(green);
						gotoxy(45,1);writeln('Linea 4 (4)');
						gotoxy(15,3);writeln('|----------------------|-----------------------|-----------------------|');
						gotoxy(15,4);writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
						gotoxy(15,5);writeln('|-Parque Central       |-Artigas               |-Mamera                |');
						gotoxy(15,6);writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/ Las      |');
						gotoxy(15,7);writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
						gotoxy(15,8);writeln('|-Capuchinos           |-Carapita              |                       |');
						gotoxy(15,9);writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						gotoxy(45,10);writeln('Linea 5 (5)');
						gotoxy(15,11);writeln('|----------------------|-----------------------|-----------------------|');
						gotoxy(15,12);writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
						gotoxy(15,13);writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
						gotoxy(15,14);writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
						gotoxy(15,15);writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						gotoxy(45,16);writeln('Linea 6 (6)');
						gotoxy(15,17);writeln('|----------------------|-----------------------|');
						gotoxy(15,18);writeln('|-Zoologico            |-La Rinconada          |');
						gotoxy(15,19);writeln('|----------------------|-----------------------|');
						writeln('');
						textcolor(white);
						writeln('Si no encuentra su linea deseada presione la tecla 2 [Enter], en caso contrario presione cualquier otro numero');
						readln(seleccionlinea2);
						end;
							if seleccionlinea2 = 2 then 
							begin
							clrscr();
							textcolor(green);
							gotoxy(45,1);writeln('Linea 7 (7)');
							gotoxy(15,3);writeln('|--------------------|---------------------|--------------------------|');
							gotoxy(15,4);writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
							gotoxy(15,5);writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
							gotoxy(15,6);writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
							gotoxy(15,7);writeln('|-La Hoyada          |-INCES               |                          |');	
							gotoxy(15,8);writeln('|--------------------|---------------------|--------------------------|');
							writeln('');
							gotoxy(45,9);writeln('CLABETREN (8)');
							gotoxy(15,10);writeln('|--------------------|---------------------|--------------------------|');
							gotoxy(15,11);writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
							gotoxy(15,12);writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
							gotoxy(15,13);writeln('|--------------------|---------------------|--------------------------|');
							writeln('');
							textcolor(white);
							writeln ('Seleccione la linea que desea escribiendo el numero que lo clasifica y pulsando [Enter]');
							end
						else writeln ('Seleccione la linea que desea escribiendo el numero que lo clasifica y pulsando [Enter]');
						
							readln(seleccionlinea);
							clrscr();	
							ndeboleto := 0										
					end;
					
					case seleccionlinea of
					1:begin
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 1"');
					  writeln('Estas son sus estaciones:');
					  gotoxy(15,3);writeln('|-----------------|------------------|-----------------|-----------------|');
					  gotoxy(15,4);writeln('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
					  gotoxy(15,5);writeln('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
					  gotoxy(15,6);writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
					  gotoxy(15,7);writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					  gotoxy(15,8);writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
					  gotoxy(15,9);writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
					  gotoxy(15,10);writeln('|-----------------|------------------|-----------------|-----------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						gotoxy(15,3);writeln('|-----------------|------------------|-----------------|-----------------|');
						gotoxy(15,4);writeln('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
						gotoxy(15,5);writeln('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
						gotoxy(15,6);writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
						gotoxy(15,7);writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					    gotoxy(15,8);writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
						gotoxy(15,9);writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
						gotoxy(15,10);writeln('|-----------------|------------------|-----------------|-----------------|');
						writeln('');
						textcolor(white);
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
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 2"');
					  writeln('Estas son sus estaciones:');
					  gotoxy(15,3);writeln('|--------------------|---------------------|--------------------------|');
					  gotoxy(15,4);writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					  gotoxy(15,5);writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					  gotoxy(15,6);writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					  gotoxy(15,7);writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					  gotoxy(15,8);writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						gotoxy(15,3);writeln('|--------------------|---------------------|--------------------------|');
					    gotoxy(15,4);writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					    gotoxy(15,5);writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					    gotoxy(15,6);writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					    gotoxy(15,7);writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					    gotoxy(15,8);writeln('|--------------------|---------------------|--------------------------|');
						writeln('');
						textcolor(white);
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
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 3"');
					  writeln('Estas son sus estaciones:');
					  gotoxy(15,3);writeln('|----------------------|-----------------------|-----------------------|');
					  gotoxy(15,4);writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					  gotoxy(15,5);writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					  gotoxy(15,6);writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					  gotoxy(15,7);writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						gotoxy(15,3);writeln('|----------------------|-----------------------|-----------------------|');
					    gotoxy(15,4);writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					    gotoxy(15,5);writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					    gotoxy(15,6);writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					    gotoxy(15,7);writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						textcolor(white);
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
					  textcolor(green);
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
					  textcolor(white);
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
						textcolor(green);
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
						textcolor(white);
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
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 5"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
					  writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
					  writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
					  writeln('|----------------------|-----------------------|-----------------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
						writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
						writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
						writeln('|----------------------|-----------------------|-----------------------|');
						writeln('');
						textcolor(white);
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
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 6"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|');
					  writeln('|-Zoologico            |-La Rinconada          |');
					  writeln('|----------------------|-----------------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|----------------------|-----------------------|');
					    writeln('|-Zoologico            |-La Rinconada          |');
					    writeln('|----------------------|-----------------------|');
						writeln('');
						textcolor(white);
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
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 7"');
					  writeln('Estas son sus estaciones:');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
					  writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
					  writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
					  writeln('|-La Hoyada          |-INCES               |                          |');	
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|--------------------|---------------------|--------------------------|');
					    writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
					    writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
					    writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
					    writeln('|-La Hoyada          |-INCES               |                          |');	
					    writeln('|--------------------|---------------------|--------------------------|');
						writeln('');
						textcolor(white);
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
					textcolor(green);
					  writeln('Su linea seleccionada ha sido la "CLABETREN"');
					  writeln('Estas son sus estaciones:');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
					  writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  textcolor(white);
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
						textcolor(green);
						ndeboleto := ndeboleto + 1;
						writeln('Estas son las estaciones disponibles:');
						writeln('|--------------------|---------------------|--------------------------|');
					    writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
						writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
						writeln('|--------------------|---------------------|--------------------------|');
						writeln('');
						textcolor(white);
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
	writeln('');
writeln ('esta seguro de su compra? presione 1 si esta de acuerdo, de lo contrario presione 2');
readln(seleccion);
case seleccion of
1: begin writeln ('el monto total a pagar es de:',precio,'-dolares..');
		writeln('ingrese sus datos para realizar el pago');
		writeln('cedula:');
		readln (cedula2);
		writeln('ingrese el codigo del banco:');
		readln(codigobanco);
		writeln('ingrese el numero de telefono:');
		readln(numtelefono);
		writeln ('ingrese el monto a pagar:');
		readln (pp);
		vuelto:=pp-precio;
		if precio<pp then
		writeln ('saldo insuficiente')
		else writeln('su vuelto es de:',vuelto,'-dolares');
		
end;
2:writeln('hasta luego, tenga feliz dia.');
end;


end.