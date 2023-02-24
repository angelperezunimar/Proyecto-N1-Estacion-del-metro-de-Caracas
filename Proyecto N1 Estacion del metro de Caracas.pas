program compra_de_boletos;

uses crt;

var 
a, c, d, e, f, g, h, i, j, k, l, precio, seleccion, seleccionlinea1, codigobanco, numtelefono, pp, vuelto, seleccionlinea2, seleccionlinea, csub, 
ndeboleto, seleccionsistema, usarboleto, cfinal, faltante, cboletosrestantes, seleccionboletosrestantes, bucletotalseleccion, cdepersonasl1, cdepersonasl2, 
cdepersonasl3, cdepersonasl4, cdepersonasl5, cdepersonasl6, cdepersonasl7, cdepersonasl8, cdeboletosusados, cdeboletosl1, cdeboletosl2, cdeboletosl3, 
cdeboletosl4, cdeboletosl5, cdeboletosl6, cdeboletosl7, cdeboletosl8, cdeboletosl1d2, cdeboletosl1d3, cdeboletosl1d4, cdeboletosl1d5, cdeboletosl1d6, cdeboletosl1d7,
cdeboletosl2d2, cdeboletosl2d3, cdeboletosl2d4, cdeboletosl2d5, cdeboletosl2d6, cdeboletosl2d7, cdeboletosl3d2, cdeboletosl3d3, cdeboletosl3d4, cdeboletosl3d5, 
cdeboletosl3d6, cdeboletosl3d7, cdeboletosl4d2, cdeboletosl4d3, cdeboletosl4d4, cdeboletosl4d5, cdeboletosl4d6, cdeboletosl4d7, cdeboletosl5d2, cdeboletosl5d3,
cdeboletosl5d4, cdeboletosl5d5, cdeboletosl5d6, cdeboletosl5d7, cdeboletosl6d2, cdeboletosl6d3, cdeboletosl6d4, cdeboletosl6d5, cdeboletosl6d6, 
cdeboletosl6d7, cdeboletosl7d2, cdeboletosl7d3, cdeboletosl7d4, cdeboletosl7d5, cdeboletosl7d6, cdeboletosl7d7, cdeboletosl8d2, cdeboletosl8d3, cdeboletosl8d4,
cdeboletosl8d5, cdeboletosl8d6, cdeboletosl8d7, pdeventasl1, pdeventasl2, pdeventasl3, pdeventasl4, pdeventasl5, pdeventasl6, pdeventasl7, pdeventasl8, 
cdeboletosusadostotal, boletosvendidos, pdeventasl1t, pdeventasl2t, pdeventasl3t, pdeventasl4t, pdeventasl5t, pdeventasl6t, pdeventasl7t, pdeventasl8t, partesistema:integer;

boletos,nombre,apellido,si, tipodeviaje: char;
 
subestacionsalida, subestaciondestino, subestacionsalidatotal, subestaciondestinototal, contrasena, clavevs: string;

cedula, cedulacompra, cedula2: real;

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
	{
	* esto generará numeros aleatorios para simular el funcionamiento de un sistema de datos que almacene
	* la cantidad de personas  que han ingresado por línea, el promedio de ventas de cada estación y la 
	* cantidad de boletos utilizados
	}
		randomize;
			   
	cdepersonasl1:= random(300000) + 150000;
	cdepersonasl2:= random(300000) + 150000;
	cdepersonasl3:= random(300000) + 150000;
	cdepersonasl4:= random(300000) + 150000;
	cdepersonasl5:= random(300000) + 150000;
	cdepersonasl6:= random(300000) + 150000;
	cdepersonasl7:= random(300000) + 150000;
	cdepersonasl8:= random(300000) + 150000;
	cdeboletosusados:= random(2000000) + 500000;
	
	{
	* Se generan numeros aleatorios asignados a variables que representaran los 7 dias de la semana
	* para cada linea, para asi poder sacar el promedio de ventas a la semana
	}
	
	cdeboletosl1:= random(300000) + 100000;
	
		cdeboletosl1d2:= random(300000) + 100000;
		cdeboletosl1d3:= random(300000) + 100000;
		cdeboletosl1d4:= random(300000) + 100000;
		cdeboletosl1d5:= random(300000) + 100000;
		cdeboletosl1d6:= random(300000) + 100000;
		cdeboletosl1d7:= random(300000) + 100000;
	
	cdeboletosl2:= random(300000) + 100000;
	
		cdeboletosl2d2:= random(300000) + 100000;
		cdeboletosl2d3:= random(300000) + 100000;
		cdeboletosl2d4:= random(300000) + 100000;
		cdeboletosl2d5:= random(300000) + 100000;
		cdeboletosl2d6:= random(300000) + 100000;
		cdeboletosl2d7:= random(300000) + 100000;
	
	cdeboletosl3:= random(300000) + 100000;
	
		cdeboletosl3d2:= random(300000) + 100000;
		cdeboletosl3d3:= random(300000) + 100000;
		cdeboletosl3d4:= random(300000) + 100000;
		cdeboletosl3d5:= random(300000) + 100000;
		cdeboletosl3d6:= random(300000) + 100000;
		cdeboletosl3d7:= random(300000) + 100000;
	
	cdeboletosl4:= random(300000) + 100000;
	
		cdeboletosl4d2:= random(300000) + 100000;
		cdeboletosl4d3:= random(300000) + 100000;
		cdeboletosl4d4:= random(300000) + 100000;
		cdeboletosl4d5:= random(300000) + 100000;
		cdeboletosl4d6:= random(300000) + 100000;
		cdeboletosl4d7:= random(300000) + 100000;
	
	cdeboletosl5:= random(300000) + 100000;
	
		cdeboletosl5d2:= random(300000) + 100000;
		cdeboletosl5d3:= random(300000) + 100000;
		cdeboletosl5d4:= random(300000) + 100000;
		cdeboletosl5d5:= random(300000) + 100000;
		cdeboletosl5d6:= random(300000) + 100000;
		cdeboletosl5d7:= random(300000) + 100000;
	
	cdeboletosl6:= random(300000) + 100000;
	
		cdeboletosl6d2:= random(300000) + 100000;
		cdeboletosl6d3:= random(300000) + 100000;
		cdeboletosl6d4:= random(300000) + 100000;
		cdeboletosl6d5:= random(300000) + 100000;
		cdeboletosl6d6:= random(300000) + 100000;
		cdeboletosl6d7:= random(300000) + 100000;
	
	cdeboletosl7:= random(300000) + 100000;
	
		cdeboletosl7d2:= random(300000) + 100000;
		cdeboletosl7d3:= random(300000) + 100000;
		cdeboletosl7d4:= random(300000) + 100000;
		cdeboletosl7d5:= random(300000) + 100000;
		cdeboletosl7d6:= random(300000) + 100000;
		cdeboletosl7d7:= random(300000) + 100000;
	
	cdeboletosl8:= random(300000) + 100000;
	
		cdeboletosl8d2:= random(300000) + 100000;
		cdeboletosl8d3:= random(300000) + 100000;
		cdeboletosl8d4:= random(300000) + 100000;
		cdeboletosl8d5:= random(300000) + 100000;
		cdeboletosl8d6:= random(300000) + 100000;
		cdeboletosl8d7:= random(300000) + 100000;

	{
	* Calculos de los promedios de ventas de las lineas
	}

pdeventasl1 := (cdeboletosl1d2 + cdeboletosl1d3 + cdeboletosl1d4 + cdeboletosl1d5 + cdeboletosl1d6 + cdeboletosl1d7 + cdeboletosl1) div 7;

pdeventasl2 := (cdeboletosl2d2 + cdeboletosl2d3 + cdeboletosl2d4 + cdeboletosl2d5 + cdeboletosl2d6 + cdeboletosl2d7 + cdeboletosl2) div 7;

pdeventasl3 := (cdeboletosl3d2 + cdeboletosl3d3 + cdeboletosl3d4 + cdeboletosl3d5 + cdeboletosl3d6 + cdeboletosl3d7 + cdeboletosl3) div 7;

pdeventasl4 := (cdeboletosl4d2 + cdeboletosl4d3 + cdeboletosl4d4 + cdeboletosl4d5 + cdeboletosl4d6 + cdeboletosl4d7 + cdeboletosl4) div 7;

pdeventasl5 := (cdeboletosl5d2 + cdeboletosl5d3 + cdeboletosl5d4 + cdeboletosl5d5 + cdeboletosl5d6 + cdeboletosl5d7 + cdeboletosl5) div 7;

pdeventasl6 := (cdeboletosl6d2 + cdeboletosl6d3 + cdeboletosl6d4 + cdeboletosl6d5 + cdeboletosl6d6 + cdeboletosl6d7 + cdeboletosl6) div 7;

pdeventasl7 := (cdeboletosl7d2 + cdeboletosl7d3 + cdeboletosl7d4 + cdeboletosl7d5 + cdeboletosl7d6 + cdeboletosl7d7 + cdeboletosl7) div 7;

pdeventasl8 := (cdeboletosl8d2 + cdeboletosl8d3 + cdeboletosl8d4 + cdeboletosl8d5 + cdeboletosl8d6 + cdeboletosl8d7 + cdeboletosl8) div 7;

repeat
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
			write('ASIGNE UNA CLAVE A SU USUARIO');
			write('----Clave:');
			readln(contrasena);
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
						cfinal := c;
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
							ndeboleto := 0;									
					end;
					
					case seleccionlinea of
					1:begin
					  
					  boletosvendidos := c;
					  pdeventasl1t := pdeventasl1 + boletosvendidos;
					  pdeventasl1 :=pdeventasl1t;
					  
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
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl1);
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
					
					  boletosvendidos := c;
					  pdeventasl2t := pdeventasl2 + boletosvendidos;
					  pdeventasl2 :=pdeventasl2t;
					
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
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl2);
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
					
					boletosvendidos := c;
					  pdeventasl3t := pdeventasl3 + boletosvendidos;
					  pdeventasl3 :=pdeventasl3t;
					
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
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl3);
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
					
					boletosvendidos := c;
					  pdeventasl4t := pdeventasl4 + boletosvendidos;
					  pdeventasl4 :=pdeventasl4t;
					
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
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl4);
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
					
					boletosvendidos := c;
					  pdeventasl5t := pdeventasl5 + boletosvendidos;
					  pdeventasl5 :=pdeventasl5t;
					
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
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl5);
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
					
					boletosvendidos := c;
					  pdeventasl6t := pdeventasl6 + boletosvendidos;
					  pdeventasl6 :=pdeventasl6t;
					
					  textcolor(green);
					  writeln('Su linea seleccionada ha sido la "LINEA 6"');
					  writeln('Estas son sus estaciones:');
					  writeln('|----------------------|-----------------------|');
					  writeln('|-Zoologico            |-La Rinconada          |');
					  writeln('|----------------------|-----------------------|');
					  writeln('');
					  textcolor(white);
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl6);
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
					
					boletosvendidos := c;
					  pdeventasl7t := pdeventasl7 + boletosvendidos;
					  pdeventasl7 :=pdeventasl7t;
					
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
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl7);
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
					
					boletosvendidos := c;
					  pdeventasl8t := pdeventasl8 + boletosvendidos;
					  pdeventasl8 :=pdeventasl8t;
					
					textcolor(green);
					  writeln('Su linea seleccionada ha sido la "CLABETREN"');
					  writeln('Estas son sus estaciones:');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
					  writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
					  writeln('|--------------------|---------------------|--------------------------|');
					  writeln('');
					  textcolor(white);
					  writeln('La cantidad de personas que han ingresado a esta linea el dia de hoy es: ',cdepersonasl8);
					  writeln('');
					  
					  writeln('Esta estacion tiene un promedio de ventas al dia de: ',cdepersonasl8);
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
						  writeln('D A T O S   D E   L A   C O M P R A');
						  writeln('|-------------------------------------------------------------------|');
					      writeln('| Nombre: ', nombre);
						  writeln('| Apellido: ', apellido);
						  writeln('| Cedula: ', cedula);
						  writeln('|-------------------------------------------------------------------|');
						  writeln('');
						  writeln('SUB ESTACIONES DE SALIDA ASIGNADAS:');
						  writeln('');
						  writeln(subestacionsalidatotal);
						  writeln('');
						  writeln('SUB ESTACIONES DE DESTINO ASIGNADAS');
						  writeln('');
						  writeln(subestaciondestinototal);
						
				END;
		
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
					readln(pp);
					vuelto:=pp-precio;
					
						if precio>pp then
							begin
							repeat
							begin
							writeln ('saldo insuficiente');
							writeln('Ingrese el faltante');
							readln(faltante);
							
							pp := pp + faltante
							
							end
							
							until pp >= precio;
								
								if  pp > precio then
									begin
									vuelto:=pp-precio;
									writeln('su vuelto es de:',vuelto,'-dolares');
									readln();
									end
								
								else 
								
									begin
									writeln('Pago efectuado con exito');
									readln();
									end;
							end
						else 
							begin
							writeln('su vuelto es de:',vuelto,'-dolares');
							writeln('Pago efectuado con exito');
							readln();
							end
							
				end;
			2:begin
			writeln('hasta luego, tenga feliz dia.');
			end;
		end;
	    
	   clrscr();
	   writeln('¿Que desea hacer ahora?');
	   writeln('');
	   writeln('Seleccione alguna de las siguientes opciones');
	   writeln('');
	   writeln('1.Salir del sistema');
	   writeln('');
	   writeln('2.Utilizar Boleto');
	   writeln('');
	   writeln('3.Ver sistema');
	   writeln('');
	   readln(seleccionsistema);
		
		case seleccionsistema of
		1:begin
		writeln('Tenga buen dia');
		end;
		
		2:begin
		
		cdeboletosusadostotal := cdeboletosusados + cfinal;
		cdeboletosusados :=cdeboletosusadostotal;
		
		writeln('UTILIZAR BOLETO');
		writeln('');
		writeln('El dia de hoy han sido usados ', cdeboletosusados, ' En la estacion de metro de Caracas');
		writeln('');
		writeln('¿Desea utilizar un boleto?');
		writeln('');
		writeln('1.Si');
	    writeln('');
	    writeln('2.No');
	    writeln('');
	    readln(usarboleto);
		
			if usarboleto = 1 then
				begin 
				cboletosrestantes := cfinal;
				writeln('sus boletos son ', cfinal);				
				writeln('');
				
				repeat
				
				writeln('Ingrese el numero de cedula con el cual compro su boleto');
				writeln('');
				readln(cedulacompra);
				
				if cedulacompra <> cedula2 then
					begin
					
					writeln('La cedula ingresada es distinta de la cedula con la cual fue comprado el boleto');
					writeln('');
					writeln('Vuelva a ingresar la cedula');
					writeln('');
					readln();
					
					end
				else
				
				until cedulacompra = cedula2;
				
				begin
				if cboletosrestantes <= 0 then
				
					begin
					writeln('No tiene boletos');
					readln();
					
					end
				else
				repeat
				cboletosrestantes := cboletosrestantes - 1;
				writeln('');
				writeln('El boleto ha sido usado correctamente');
				writeln('');
				writeln('Le quedan ', cboletosrestantes, ' boletos');
				writeln('');
				writeln('¿Desea usar otro boleto?');
				writeln('');
				writeln('1.Si');
				writeln('');
				writeln('2.No');
				writeln('');
				readln(seleccionboletosrestantes);
				
				if cboletosrestantes <= 0 then
				
					begin
					writeln('No le quedan mas boletos');
					seleccionboletosrestantes := 2;
					end
				
				
				else
				
				
				until seleccionboletosrestantes = 2;
				
				end;
				
				clrscr();
				writeln('¿Desea comprar boletos?');
				writeln('');
				writeln('1.Si');
				writeln('');
				writeln('2.No');
				readln(bucletotalseleccion);

				end;
				
		
		end;
		
		3:begin
		repeat
		writeln('Ingrese su clave de usuario:');
		readln(clavevs);
		
		if contrasena <> clavevs then 
		
		writeln('Clave incorrecta')
		
		else
		
		until contrasena = clavevs;
		
		clrscr();
		writeln('¿Cual parte del sistema desea visualizar?');
		writeln('');
		writeln('1.Cantidad de personas que han ingresado por linea');
		writeln('');
		writeln('2.Promedio de ventas por linea a la semana');
		writeln('');
		writeln('3.Cantidad de boletos utilizados');
		readln(partesistema);
		
		case partesistema of
		1:
		begin
		
		writeln('PROMEDIO DE VENTAS POR LINEA A LA SEMANA'); 
		writeln(''); 
		writeln('La "LINEA 1" tiene un promedio de ventas semanales de ', pdeventasl1);
		writeln('');
		writeln('La "LINEA 2" tiene un promedio de ventas semanales de ', pdeventasl2);
		writeln('');
		writeln('La "LINEA 3" tiene un promedio de ventas semanales de ', pdeventasl3);
		writeln('');
		writeln('La "LINEA 4" tiene un promedio de ventas semanales de ', pdeventasl4);
		writeln('');
		writeln('La "LINEA 5" tiene un promedio de ventas semanales de ', pdeventasl5);
		writeln('');
		writeln('La "LINEA 6" tiene un promedio de ventas semanales de ', pdeventasl6);
		writeln('');
		writeln('La "LINEA 7" tiene un promedio de ventas semanales de ', pdeventasl7);
		writeln('');
		writeln('La "LINEA CLABETREN" tiene un promedio de ventas semanales de ', pdeventasl8);
		writeln('');
		writeln('Presione Enter para Continuar');
		readln();
		
		
		end;
		
		2:
		begin
		
		
		
		end;
		
		3:
		begin
		
		
		
		end;
		
		
		end;
		
		end;
		
		end;
		


	  
	
	end;
	
	2:writeln('hasta luego, tenga feliz dia.'); 
		
end;

until bucletotalseleccion = 2;

end.
