program compra_de_boletos;

uses crt;

var 
a, c, d, e, f, g, h, i, j, k, l, precio, seleccion, seleccionlinea1, codigobanco, pp, vuelto, seleccionlinea2, seleccionlinea, csub, 
ndeboleto, seleccionsistema, usarboleto, cfinal, faltante, cboletosrestantes, seleccionboletosrestantes, bucletotalseleccion, boletosvendidos, 
partesistema:integer;

boletos,si, tipodeviaje: char;
 
subestacionsalida, subestaciondestino, subestacionsalidatotal, subestaciondestinototal, contrasena, clavevs,nombre,apellido, numtelefono: string;

cdepersonasl1, cdepersonasl2, cdepersonasl3, cdepersonasl4, cdepersonasl5, cdepersonasl6, cdepersonasl7, cdepersonasl8, cdeboletosusados, cdeboletosl1, 
cdeboletosl2, cdeboletosl3, cdeboletosl4, cdeboletosl5, cdeboletosl6, cdeboletosl7, cdeboletosl8, cdeboletosl1d2, cdeboletosl1d3, cdeboletosl1d4, 
cdeboletosl1d5, cdeboletosl1d6, cdeboletosl1d7, cdeboletosl2d2, cdeboletosl2d3, cdeboletosl2d4, cdeboletosl2d5, cdeboletosl2d6, cdeboletosl2d7, 
cdeboletosl3d2, cdeboletosl3d3, cdeboletosl3d4, cdeboletosl3d5, cdeboletosl3d6, cdeboletosl3d7, cdeboletosl4d2, cdeboletosl4d3, cdeboletosl4d4, 
cdeboletosl4d5, cdeboletosl4d6, cdeboletosl4d7, cdeboletosl5d2, cdeboletosl5d3,cdeboletosl5d4, cdeboletosl5d5, cdeboletosl5d6, cdeboletosl5d7, 
cdeboletosl6d2, cdeboletosl6d3, cdeboletosl6d4, cdeboletosl6d5, cdeboletosl6d6, cdeboletosl6d7, cdeboletosl7d2, cdeboletosl7d3, cdeboletosl7d4, 
cdeboletosl7d5, cdeboletosl7d6, cdeboletosl7d7, cdeboletosl8d2, cdeboletosl8d3, cdeboletosl8d4, cdeboletosl8d5, cdeboletosl8d6, cdeboletosl8d7, 
pdeventasl1, pdeventasl2, pdeventasl3, pdeventasl4, pdeventasl5, pdeventasl6, pdeventasl7, pdeventasl8, cdeboletosusadostotal, pdeventasl1t, 
pdeventasl2t, pdeventasl3t, pdeventasl4t, pdeventasl5t, pdeventasl6t, pdeventasl7t, pdeventasl8t, cdepersonastotal, cdeboletosdiadehoy,cedula2,cedula,cedulacompra : Longint;

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
		randomize; {Se agrego el sistema de numeros aleatorios para la simulacion}
			   
	cdepersonasl1:= random(300000) + 150000;
		if cdepersonasl1<0 then
		cdepersonasl1 := cdepersonasl1 * -1;
		
	cdepersonasl2:= random(300000) + 150000;
			
		if cdepersonasl2<0 then
		cdepersonasl2 := cdepersonasl1 * -1;
	
	cdepersonasl3:= random(300000) + 150000;
	
		if cdepersonasl1<0 then
		cdepersonasl3 := cdepersonasl3 * -1;
		
	cdepersonasl4:= random(300000) + 150000;
		if cdepersonasl1<0 then
		cdepersonasl4 := cdepersonasl4 * -1;
		
	cdepersonasl5:= random(300000) + 150000;
		if cdepersonasl5<0 then
		cdepersonasl5 := cdepersonasl5 * -1;
		
	cdepersonasl6:= random(300000) + 150000;
		if cdepersonasl6<0 then
		cdepersonasl6 := cdepersonasl6 * -1;
		
	cdepersonasl7:= random(300000) + 150000;
	
		if cdepersonasl7<0 then
		cdepersonasl7 := cdepersonasl7 * -1;
	
	cdepersonasl8:= random(300000) + 150000;
		if cdepersonasl8<0 then
		cdepersonasl8 := cdepersonasl8 * -1;
	
	cdeboletosusados:= random(2000000) + 500000;
		if cdeboletosusados<0 then
		cdeboletosusados := cdeboletosusados * -1;
		
	
	
	{
	* Se generan numeros aleatorios asignados a variables que representaran los 7 dias de la semana
	* para cada linea, para asi poder sacar el promedio de ventas a la semana
	}
	
	cdeboletosl1:= random(300000) + 150000;
		if cdeboletosl1<0 then
		cdeboletosl1:= cdeboletosl1*-1;
	
		cdeboletosl1d2:= random(300000) + 150000;
			if cdeboletosl1d2<0 then
			cdeboletosl1d2:= cdeboletosl1d2*-1;
		
		cdeboletosl1d3:= random(300000) + 150000;
			if cdeboletosl1d3<0 then
			cdeboletosl1d3:= cdeboletosl1d3*-1;
			
		cdeboletosl1d4:= random(300000) + 150000;
			if cdeboletosl1d4<0 then
			cdeboletosl1d4:= cdeboletosl1d4*-1;
		
		cdeboletosl1d5:= random(300000) + 150000;
			if cdeboletosl1d5<0 then
			cdeboletosl1d5:= cdeboletosl1d5*-1;
		
		cdeboletosl1d6:= random(300000) + 150000;
			if cdeboletosl1d6<0 then
			cdeboletosl1d6:= cdeboletosl1d6*-1;
			
		cdeboletosl1d7:= random(300000) + 150000;
			if cdeboletosl1d7<0 then
			cdeboletosl1d7:= cdeboletosl1d7*-1;
	
	cdeboletosl2:= random(300000) + 150000;
			if cdeboletosl2<0 then
			cdeboletosl2:= cdeboletosl2*-1;
	
		cdeboletosl2d2:= random(300000) + 150000;
			if cdeboletosl2d2<0 then
			cdeboletosl2d2:= cdeboletosl2d2*-1;
		
		cdeboletosl2d3:= random(300000) + 150000;
			if cdeboletosl2d3<0 then
			cdeboletosl2d3:= cdeboletosl2d3*-1;
			
		cdeboletosl2d4:= random(300000) + 150000;
			if cdeboletosl2d4<0 then
			cdeboletosl2d4:= cdeboletosl2d4*-1;
			
		cdeboletosl2d5:= random(300000) + 150000;
			if cdeboletosl2d5<0 then
			cdeboletosl2d5:= cdeboletosl2d5*-1;
			
		cdeboletosl2d6:= random(300000) + 150000;
			if cdeboletosl2d6<0 then
			cdeboletosl2d6:= cdeboletosl2d6*-1;
		
		cdeboletosl2d7:= random(300000) + 150000;
			if cdeboletosl2d7<0 then
			cdeboletosl2d7:= cdeboletosl2d7*-1;
	
	cdeboletosl3:= random(300000) + 150000;
			if cdeboletosl3<0 then
			cdeboletosl3:= cdeboletosl3*-1;
	
		cdeboletosl3d2:= random(300000) + 150000;
			if cdeboletosl3d2<0 then
			cdeboletosl3d2:= cdeboletosl3d2*-1;
		
		cdeboletosl3d3:= random(300000) + 15000;
			if cdeboletosl3d3<0 then
			cdeboletosl3d3:= cdeboletosl3d3*-1;
		
		cdeboletosl3d4:= random(300000) + 1500000;
			if cdeboletosl3d4<0 then
			cdeboletosl3d4:= cdeboletosl3d4*-1;
			
		cdeboletosl3d5:= random(300000) + 150000;
			if cdeboletosl3d5<0 then
			cdeboletosl3d5:= cdeboletosl3d5*-1;
			
		cdeboletosl3d6:= random(300000) + 150000;
			if cdeboletosl3d6<0 then
			cdeboletosl3d6:= cdeboletosl3d6*-1;
			
		cdeboletosl3d7:= random(300000) + 150000;
			if cdeboletosl3d7<0 then
			cdeboletosl3d7:= cdeboletosl3d7*-1;
	
	cdeboletosl4:= random(300000) + 150000;
			if cdeboletosl4<0 then
			cdeboletosl4:= cdeboletosl4*-1;
	
		cdeboletosl4d2:= random(300000) + 150000;
			if cdeboletosl4d2<0 then
			cdeboletosl4d2:= cdeboletosl4d2*-1;
			
			
		cdeboletosl4d3:= random(300000) + 150000;
			if cdeboletosl4d3<0 then
			cdeboletosl4d3:= cdeboletosl4d3*-1;
			
		cdeboletosl4d4:= random(300000) + 150000;
			if cdeboletosl4d4<0 then
			cdeboletosl4d4:= cdeboletosl4d4*-1;
			
		cdeboletosl4d5:= random(300000) + 150000;
			if cdeboletosl4d5<0 then
			cdeboletosl4d5:= cdeboletosl4d5*-1;
		
		cdeboletosl4d6:= random(300000) + 150000;
			if cdeboletosl4d6<0 then
			cdeboletosl4d6:= cdeboletosl4d6*-1;
		
		cdeboletosl4d7:= random(300000) + 150000;
			if cdeboletosl4d7<0 then
			cdeboletosl4d7:= cdeboletosl4d7*-1;
	
	cdeboletosl5:= random(300000) + 150000;
			if cdeboletosl5<0 then
			cdeboletosl5:= cdeboletosl5*-1;
	
		cdeboletosl5d2:= random(300000) + 150000;
			if cdeboletosl5d2<0 then
			cdeboletosl5d2:= cdeboletosl5d2*-1;
		
		cdeboletosl5d3:= random(300000) + 150000;
			if cdeboletosl5d3<0 then
			cdeboletosl5d3:= cdeboletosl5d3*-1;
			
		cdeboletosl5d4:= random(300000) + 150000;
			if cdeboletosl5d4<0 then
			cdeboletosl5d4:= cdeboletosl5d4*-1;
		
		cdeboletosl5d5:= random(300000) + 150000;
			if cdeboletosl5d5<0 then
			cdeboletosl5d5:= cdeboletosl5d5*-1;
			
		cdeboletosl5d6:= random(300000) + 150000;
			if cdeboletosl5d6<0 then
			cdeboletosl5d6:= cdeboletosl5d6*-1;
		
		cdeboletosl5d7:= random(300000) + 150000;
			if cdeboletosl5d7<0 then
			cdeboletosl5d7:= cdeboletosl5d7*-1;
	
	cdeboletosl6:= random(300000) + 150000;
			if cdeboletosl6<0 then
			cdeboletosl6:= cdeboletosl6*-1;

	    cdeboletosl6d2:= random(300000) + 150000;
			if cdeboletosl6d2<0 then
			cdeboletosl6d2:= cdeboletosl6d2*-1;
	    
		cdeboletosl6d3:= random(300000) + 150000;
			if cdeboletosl6d3<0 then
			cdeboletosl6d3:= cdeboletosl6d3*-1;
		
		cdeboletosl6d4:= random(300000) + 150000;
			if cdeboletosl6d4<0 then
			cdeboletosl6d4:= cdeboletosl6d4*-1;
		
		cdeboletosl6d5:= random(300000) + 150000;
			if cdeboletosl6d5<0 then
			cdeboletosl6d5:= cdeboletosl6d5*-1;
		
		cdeboletosl6d6:= random(300000) + 150000;
			if cdeboletosl6d6<0 then
			cdeboletosl6d6:= cdeboletosl6d6*-1;
			
		cdeboletosl6d7:= random(300000) + 150000;
			if cdeboletosl6d7<0 then
			cdeboletosl6d7:= cdeboletosl6d7*-1;
	
	cdeboletosl7:= random(300000) + 150000;
			if cdeboletosl7<0 then
			cdeboletosl7:= cdeboletosl7*-1;
	
		cdeboletosl7d2:= random(300000) + 150000;
			if cdeboletosl7d2<0 then
			cdeboletosl7d2:= cdeboletosl7d2*-1;
			
		
		cdeboletosl7d3:= random(300000) + 150000;
			if cdeboletosl7d3<0 then
			cdeboletosl7d3:= cdeboletosl7d3*-1;
		
		cdeboletosl7d4:= random(300000) + 150000;
			if cdeboletosl7d4<0 then
			cdeboletosl7d4:= cdeboletosl7d4*-1;
		
		cdeboletosl7d5:= random(300000) + 150000;
			if cdeboletosl7d5<0 then
			cdeboletosl7d5:= cdeboletosl7d5*-1;
		
		cdeboletosl7d6:= random(300000) + 150000;
			if cdeboletosl7d6<0 then
			cdeboletosl7d6:= cdeboletosl7d6*-1;
		
		cdeboletosl7d7:= random(300000) + 150000;
			if cdeboletosl7d7<0 then
			cdeboletosl7d7:= cdeboletosl7d7*-1;
	
	cdeboletosl8:= random(300000) + 150000;
			if cdeboletosl8<0 then
			cdeboletosl8:= cdeboletosl8*-1;
	
		cdeboletosl8d2:= random(300000) + 150000;
			if cdeboletosl8d2<0 then
			cdeboletosl8d2:= cdeboletosl8d2*-1;
		
		cdeboletosl8d3:= random(300000) + 150000;
			if cdeboletosl8d3<0 then
			cdeboletosl8d3:= cdeboletosl8d3*-1;
		
		cdeboletosl8d4:= random(300000) + 150000;
			if cdeboletosl8d4<0 then
			cdeboletosl8d4:= cdeboletosl8d4*-1;
		
		cdeboletosl8d5:= random(300000) + 150000;
			if cdeboletosl8d5<0 then
			cdeboletosl8d5:= cdeboletosl8d5*-1;
			
		cdeboletosl8d6:= random(300000) + 150000;
			if cdeboletosl8d6<0 then
			cdeboletosl8d6:= cdeboletosl8d6*-1;
		
		cdeboletosl8d7:= random(300000) + 150000;
			if cdeboletosl8d7<0 then
			cdeboletosl8d7:= cdeboletosl8d7*-1;

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
	
	cdeboletosdiadehoy := cdepersonasl1 + cdepersonasl2 + cdepersonasl3 + cdepersonasl4 + cdepersonasl5 + cdepersonasl6 + cdepersonasl7 + cdepersonasl8;

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
if a = 2 then
bucletotalseleccion := a;
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
			write('---Apellido:');
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
					writeln('Si no encuentra su boleto deseado presione la tecla 1 y pulse [Enter], en caso contrario presione cualquier otro numero y pulse [Enter]');
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
												
						readln(boletos); {agregando boletos} {Se mejoro la seleccion de boletos y viajes}
						clrscr();
			        
					case boletos of
					'a': begin 
						gotoxy(35,1);writeln('=========================================================');
						gotoxy(35,2);writeln('El boleto simple tiene una cobertura de: 1 viaje en metro');
						gotoxy(35,3);writeln('=========================================================');
							repeat
							gotoxy(5,4);write('Indique cuantos boletos desea comprar:');
							readln (c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:= c*b;
								if c>0 then writeln('///Su coste es de:',precio,'-dolares///')
								else writeln ('hasta luego, tenga feliz dia.');
						end;
						
					'b': begin
						gotoxy(20,1);writeln('==================================================================================');
						gotoxy(20,2);writeln('El boleto integrado tiene una cobertura de: 1 viaje en metro o 1 viaje en metrobus');
						gotoxy(20,3);writeln('==================================================================================');
						gotoxy(5,5);writeln('Que desea hacer?');
							repeat
							writeln('eliga una de las opciones.');
							writeln('a. 1 Viaje en metro');
							writeln('b. 1 Viaje en metrobus');
							readln(tipodeviaje);
								if (tipodeviaje<> 'a') or (tipodeviaje<> 'b') then writeln ('escoga una de las opciones');
							until (tipodeviaje = 'a') or (tipodeviaje='b');
						clrscr();
							repeat
							write ('///Indique cuantos boletos desea comprar///:');
							readln (c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						
						precio:=c*p2;
							if c>0 then  writeln ('Su coste es de:',precio,'-Dolares')
							else writeln ('hasta luego, tenga feliz dia.');
						end;
						
					'c':begin
					    gotoxy(35,1);writeln('================================================================');
						gotoxy(35,2);writeln('El boleto ida y vuelta tiene una cobertura de: 2 viajes en metro');
						gotoxy(35,3);writeln('================================================================');
							repeat
							gotoxy(5,5);write ('///Indique cuantos boletos desea comprar///:');
							readln (c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p3;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln ('Hasta luego, tenga feliz dia.');
						end;
						
					'd':begin 
						writeln('==================================================================================================');
						writeln ('El boleto ida y vuelta integrado tiene una cobertura de: 2 viajes en metro o 2 viajes en metrobus');
						writeln('==================================================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
							repeat
							writeln('eliga una de las opciones.');
							writeln('a. 2 Viaje en metro');
							writeln('b. 2 Viaje en metrobus');
							readln(tipodeviaje);
								if (tipodeviaje<> 'a') or (tipodeviaje<> 'b') then writeln ('escoga una de las opciones');
								until (tipodeviaje = 'a') or (tipodeviaje='b');
						clrscr();
							repeat
							write ('///Indique cuantos boletos desea comprar///:');
							readln (c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p4;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln ('hasta luego, tenga feliz dia.');
						end;
						
					'e':begin
						gotoxy(35,1);writeln('===============================================================');
						gotoxy(35,2);writeln('El boleto multiabono tiene una cobertura de: 10 viajes en metro');
						gotoxy(35,3);writeln('===============================================================');
							repeat
							gotoxy(5,5);write ('///Indique cuantos boletos desea comprar///:');
							readln (c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p5;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln('hasta luego, tenga feliz dia.');
						end;
						
					'f':begin
						gotoxy(15,1);writeln('=================================================================================================');
						gotoxy(15,2);writeln('El boleto multiabono integrado tiene una cobertura de: 10 viajes en metro o 10 viajes en metrobus');
						gotoxy(15,3);writeln('=================================================================================================');
						gotoxy(5,5);writeln('Que desea hacer?');
							repeat
							writeln('eliga una de las opciones.');
							writeln('a. 10 Viaje en metro');
							writeln('b. 10 Viaje en metrobus');
							readln(tipodeviaje);
								if (tipodeviaje<> 'a') or (tipodeviaje<> 'b') then writeln('escoga una de las opciones');
							until (tipodeviaje = 'a') or (tipodeviaje='b');
						clrscr();
							repeat
							write ('///Indique cuantos boletos desea comprar///:');
							readln (c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p6;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln ('hasta luego, tenga feliz dia.');				
						end;
						
					'g':begin
						gotoxy(30,1);writeln('=======================================================================');
						gotoxy(30,2);writeln('El boleto estudiantil simple tiene una cobertura de: 10 viajes en metro');
						gotoxy(30,3);writeln('=======================================================================');
							repeat
							gotoxy(10,5);write ('///Indique cuantos boletos desea comprar///:');
							readln(c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p7;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln('hasta luego, tenga feliz dia.');
						end;
						
					'h':begin
						gotoxy(15,1);writeln('==================================================================================================');
						gotoxy(15,2);writeln('El boleto estudiantil integrado tiene una cobertura de: 10 viajes en metro o 20 viajes en metrobus');
						gotoxy(15,3);writeln('==================================================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
							repeat
							writeln('eliga una de las opciones.');
							writeln('a. 10 Viaje en metro');
							writeln('b. 20 Viaje en metrobus');
							readln(tipodeviaje);
								if (tipodeviaje<> 'a') or (tipodeviaje<> 'b') then writeln ('escoga una de las opciones');
							until (tipodeviaje = 'a') or (tipodeviaje='b');
						clrscr();
							repeat
							write ('///Indique cuantos boletos desea comprar///:');
							readln(c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p8;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln('hasta luego, tenga feliz dia');
						end;
						
					'i':begin
						gotoxy(30,1);writeln('==================================================================');
						gotoxy(30,2);writeln('El boleto metroTarjeta tiene una cobertura de: 20, 30, o 40 viajes');
						gotoxy(30,3);writeln('==================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
							repeat
							writeln('eliga una de las opciones.');
							writeln('a. 20 Viaje en metro');
							writeln('b. 30 Viaje en metro');
							writeln('c. 40 viaje en metro');
							readln(tipodeviaje);
								if (tipodeviaje<> 'a') or (tipodeviaje<> 'b') or (tipodeviaje<> 'c') then writeln ('escoga una de las opciones');
							until (tipodeviaje = 'a') or (tipodeviaje='b') or (tipodeviaje='c');
						clrscr();
							repeat
							write ('///Indique cuantos boletos desea comprar///:');
							readln(c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p9;
							if c>0 then writeln('Su coste es de:',precio,'-Dolares')
							else writeln('hasta luego, tenga feliz dia');
						end;
						
					'j':begin
						gotoxy(15,1);writeln('======================================================================================================');
						gotoxy(15,2);writeln('El boleto metroTarjeta integrado tiene una cobertura de: 20,30 y 40 viajes en metro ademas de metrobus');
						gotoxy(15,3);writeln('======================================================================================================');
						gotoxy(10,5);writeln('Que desea hacer?');
							repeat
							writeln('eliga una de las opciones.');
							writeln('a. 20 Viaje en metro');
							writeln('b. 30 Viaje en metro');
							writeln('c. 40 viaje en metro');
							writeln('d. 20 Viajes en metrobus');
							writeln('e. 30 Viajes en metrobus');
							writeln('f. 40 Viajes en metrobus');
							readln(tipodeviaje);
								if (tipodeviaje<> 'a') or (tipodeviaje<> 'b') or (tipodeviaje<> 'c') or  (tipodeviaje<> 'd') or  (tipodeviaje<> 'e') or  (tipodeviaje<> 'f')  then writeln ('escoga una de las opciones');
							until (tipodeviaje = 'a') or (tipodeviaje='b') or (tipodeviaje='c') or (tipodeviaje= 'd') or  (tipodeviaje= 'e') or  (tipodeviaje= 'f');
						clrscr();
							repeat
							write ('///Indique cuantos boletos desea comprar///:');
							readln(c);
								if c<=0 then writeln ('ingrese una cantidad de boletos valida')
							until c>0;
						precio:=c*p10;
							if c>0 then writeln ('Su coste es de:',precio,'-Dolares')
							else writeln('hasta luego tenga feliz dia'); {:D}
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
						gotoxy(15,6);writeln ('|-Perez Bonalde   |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
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
						writeln('Si no encuentra su linea deseada presione la tecla 1 [Enter], en caso contrario presione cualquier otro numero y pulse [Enter]');
						readln(seleccionlinea1);
						
							if seleccionlinea1 = 1 then
							begin
							clrscr();
							textcolor(green);
							gotoxy(45,1);writeln('Linea 4 (4)');
							gotoxy(15,3);writeln('|----------------------|-----------------------|-----------------------|');
							gotoxy(15,4);writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
							gotoxy(15,5);writeln('|-Parque Central       |-Artigas               |-Mamera                |');
							gotoxy(15,6);writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/Las      |');
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
							writeln('Si no encuentra su linea deseada presione la tecla 2 [Enter], en caso contrario presione cualquier otro numero y pulse [Enter]');
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
						  gotoxy(15,5);writeln('|-Perez Bonalde   |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
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
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
							gotoxy(15,5);writeln('|-Perez Bonalde   |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
							gotoxy(15,6);writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
							gotoxy(15,7);writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
							gotoxy(15,8);writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
							gotoxy(15,9);writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
							gotoxy(15,10);writeln('|-----------------|------------------|-----------------|-----------------|');
							writeln('');
							textcolor(white);
							writeln('Para el boleto N°', ndeboleto);
							writeln('');
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Propatria') and (subestacionsalida <> 'Perez Bonalde') and (subestacionsalida <> 'Plaza Sucre') and (subestacionsalida <> 'Gato Negro') and (subestacionsalida <> 'Agua Salud') and (subestacionsalida <> 'Cano Amarillo') and (subestacionsalida <> 'Capitolio') and (subestacionsalida <> 'La Hoyada') and (subestacionsalida <> 'Parque Carabobo') and (subestacionsalida <> 'Bellas Artes') and (subestacionsalida <> 'Colegio de Ing') and (subestacionsalida <> 'Plaza Venezuela') and (subestacionsalida <> 'Sabana Grande')and (subestacionsalida <> 'Chacaito') and (subestacionsalida <> 'Chacao') and (subestacionsalida <> 'Altamira') and (subestacionsalida <> 'Miranda') and (subestacionsalida <> 'Los Dos Caminos') and (subestacionsalida <> 'Los Cartijos') and (subestacionsalida <> 'La California') and (subestacionsalida <> 'Petare') and (subestacionsalida <> 'Palo Verde') then writeln('sub estación de salida incorrecta');
								until (subestacionsalida = 'Propatria') or (subestacionsalida = 'Perez Bonalde') or (subestacionsalida = 'Plaza Sucre') or (subestacionsalida = 'Gato Negro') or (subestacionsalida = 'Agua Salud') or (subestacionsalida = 'Cano Amarillo') or (subestacionsalida = 'Capitolio') or (subestacionsalida = 'La Hoyada') or (subestacionsalida = 'Parque Carabobo') or (subestacionsalida = 'Bellas Artes') or (subestacionsalida = 'Colegio de Ing') or (subestacionsalida = 'Plaza Venezuela') or (subestacionsalida = 'Sabana Grande')or (subestacionsalida = 'Chacaito') or (subestacionsalida = 'Chacao') or (subestacionsalida = 'Altamira') or (subestacionsalida = 'Miranda') or (subestacionsalida = 'Los Dos Caminos') or (subestacionsalida = 'Los Cortijos') or (subestacionsalida = 'La California') or (subestacionsalida = 'Petare') or (subestacionsalida = 'Palo Verde');
								
								repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'Propatria') and (subestaciondestino <> 'Perez Bonald') and (subestaciondestino <> 'Plaza Sucre') and (subestaciondestino <> 'Gato Negro') and (subestaciondestino <> 'Agua Salud') and (subestaciondestino <> 'Cano Amarillo') and (subestaciondestino <> 'Capitolio') and (subestaciondestino <> 'La Hoyada') and (subestaciondestino <> 'Parque Carabobo') and (subestaciondestino <> 'Bellas Artes') and (subestaciondestino <> 'Colegio de Ing') and (subestaciondestino <> 'Plaza Venezuela') and (subestaciondestino <> 'Sabana Grande')and (subestaciondestino <> 'Chacaito') and (subestaciondestino <> 'Chacao') and (subestaciondestino <> 'Altamira') and (subestaciondestino <> 'Miranda') and (subestacionsalida <> 'Los Dos Caminos') and (subestaciondestino <> 'Los Cortijos') and (subestaciondestino <> 'La California') and (subestaciondestino <> 'Petare') and (subestaciondestino <> 'Palo Verde') then writeln('sub estación de salida incorrecta');
								until (subestaciondestino = 'Propatria') or (subestaciondestino = 'Perez Bonalde') or (subestaciondestino = 'Plaza Sucre') or (subestaciondestino = 'Gato Negro') or (subestaciondestino = 'Agua Salud') or (subestaciondestino = 'Cano Amarillo') or (subestaciondestino = 'Capitolio') or (subestaciondestino = 'La Hoyada') or (subestaciondestino = 'Parque Carabobo') or (subestaciondestino = 'Bellas Artes') or (subestaciondestino = 'Colegio de Ing') or (subestaciondestino = 'Plaza Venezuela') or (subestaciondestino = 'Sabana Grande')or (subestaciondestino = 'Chacaito') or (subestaciondestino = 'Chacao') or (subestaciondestino = 'Altamira') or (subestaciondestino = 'Miranda') or (subestacionsalida = 'Los Dos Caminos') or (subestaciondestino = 'Los Cortijos') or (subestaciondestino = 'La California') or (subestaciondestino = 'Petare') or (subestaciondestino = 'Palo Verde');
								
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
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'El Silencio') and (subestacionsalida <> 'Capuchinos') and (subestacionsalida <> 'Maternidad') and (subestacionsalida <> 'Artiguas') and (subestacionsalida <> 'La Paz') and (subestacionsalida <> 'La Yaguara') and (subestacionsalida <> 'Carapita') and (subestacionsalida <> 'Antimano') and (subestacionsalida <> 'Mamera') and (subestacionsalida <> 'Caricuao') and (subestacionsalida <> 'Zoologico') and (subestacionsalida <> 'Ruiz Pineda/Las adjuntas') then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'El Silencio') or (subestacionsalida = 'Capuchinos') or (subestacionsalida = 'Maternidad') or (subestacionsalida = 'Artiguas') or (subestacionsalida = 'La Paz') or (subestacionsalida = 'La Yaguara') or (subestacionsalida = 'Carapita') or (subestacionsalida = 'Antimano') or (subestacionsalida = 'Mamera') or (subestacionsalida = 'Caricuao') or (subestacionsalida = 'Zoologico') or (subestacionsalida = 'Ruiz Pineda/Las adjuntas');
								
								repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'El Silencio') and (subestaciondestino <> 'Capuchinos') and (subestaciondestino <> 'Maternidad') and (subestaciondestino <> 'Artiguas') and (subestaciondestino <> 'La Paz') and (subestaciondestino <> 'La Yaguara') and (subestaciondestino <> 'Carapita') and (subestaciondestino <> 'Antimano') and (subestaciondestino <> 'Mamera') and (subestaciondestino <> 'Caricuao') and (subestaciondestino <> 'Zoologico') and (subestaciondestino <> 'Ruiz Pineda/Las adjuntas') then writeln('sub estacion incorrecta');
								until (subestaciondestino = 'El Silencio') or (subestaciondestino = 'Capuchinos') or (subestaciondestino = 'Maternidad') or (subestaciondestino = 'Artiguas') or (subestaciondestino = 'La Paz') or (subestaciondestino = 'La Yaguara') or (subestaciondestino = 'Carapita') or (subestaciondestino = 'Antimano') or (subestaciondestino = 'Mamera') or (subestaciondestino = 'Caricuao') or (subestaciondestino = 'Zoologico') or (subestaciondestino = 'Ruiz Pineda/Las adjuntas');
								
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
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Plaza Venezuela') and (subestacionsalida <> 'Ciudad Universitaria') and (subestacionsalida <> 'Los Simbolos') and (subestacionsalida <> 'La Bandera') and (subestacionsalida <> 'El valle') and (subestacionsalida <> 'Los Jardines') and (subestacionsalida <> 'Coche') and (subestacionsalida <> 'Mercado') and (subestacionsalida <> 'La Rinconada')  then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'Plaza Venezuela') or (subestacionsalida = 'Ciudad Universitaria') or (subestacionsalida = 'Los Simbolos') or (subestacionsalida = 'La Bandera') or (subestacionsalida = 'El Valle') or (subestacionsalida = 'Los Jardines') or (subestacionsalida = 'Coche') or (subestacionsalida = 'Mercado') or (subestacionsalida = 'La Rinconada');
								
								repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'Plaza Venezuela') and (subestaciondestino <> 'Ciudad Universitaria') and (subestaciondestino <> 'Los Simbolos') and (subestaciondestino <> 'La Bandera') and (subestaciondestino <> 'El valle') and (subestaciondestino <> 'Los Jardines') and (subestaciondestino <> 'Coche') and (subestaciondestino <> 'Mercado') and (subestaciondestino <> 'La Rinconada')  then writeln('sub estacion incorrecta');
								until (subestaciondestino = 'Plaza Venezuela') or (subestaciondestino = 'Ciudad Universitaria') or (subestaciondestino = 'Los Simbolos') or (subestaciondestino = 'La Bandera') or (subestaciondestino = 'El Valle') or (subestaciondestino = 'Los Jardines') or (subestaciondestino = 'Coche') or (subestaciondestino = 'Mercado') or (subestaciondestino = 'La Rinconada');
								
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
						  gotoxy(15,3);writeln('|----------------------|-----------------------|-----------------------|');
						  gotoxy(15,4);writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
						  gotoxy(15,5);writeln('|-Parque Central       |-Artigas               |-Mamera                |');
						  gotoxy(15,6);writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/Las      |');
						  gotoxy(15,7);writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
						  gotoxy(15,8);writeln('|-Capuchinos           |-Carapita              |                       |');
						  gotoxy(15,9);writeln('|----------------------|-----------------------|-----------------------|');
						  writeln('');
						  textcolor(white);
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
							gotoxy(15,4);writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
							gotoxy(15,5);writeln('|-Parque Central       |-Artigas               |-Mamera                |');
							gotoxy(15,6);writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/Las      |');
							gotoxy(15,7);writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
							gotoxy(15,8);writeln('|-Capuchinos           |-Carapita              |                       |');
							gotoxy(15,9);writeln('|----------------------|-----------------------|-----------------------|');
							writeln('');
							textcolor(white);
							writeln('Para el boleto N°', ndeboleto);
							writeln('');
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Zona Rental') and (subestacionsalida <> 'Parque Central') and (subestacionsalida <> 'Nuevo Circo') and (subestacionsalida <> 'Teatros') and (subestacionsalida <> 'Capuchinos') and (subestacionsalida <> 'Maternidad') and (subestacionsalida <> 'Artigas') and (subestacionsalida <> 'La Paz') and (subestacionsalida <> 'La Yaragua') and (subestacionsalida <> 'Carapita') and (subestacionsalida <> 'Antiman') and (subestacionsalida <> 'Mamera') and (subestacionsalida <> 'Carapita') and (subestacionsalida <> 'Ruiz Pineda/Las Adjuntas') then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'Zona Rental') or (subestacionsalida = 'Parque Central') or (subestacionsalida = 'Nuevo Circo') or (subestacionsalida = 'Teatros') or (subestacionsalida = 'Capuchinos') or (subestacionsalida = 'Maternidad') or (subestacionsalida = 'Artigas') or (subestacionsalida = 'La Paz') or (subestacionsalida = 'La Yaragua') or (subestacionsalida = 'Carapita') or (subestacionsalida = 'Antiman') or (subestacionsalida = 'Mamera') or (subestacionsalida = 'Ruiz Pineda/Las Adjuntas') ;
								
								repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'Zona Rental') and (subestaciondestino <> 'Parque Central') and (subestaciondestino <> 'Nuevo Circo') and (subestaciondestino <> 'Teatros') and (subestaciondestino <> 'Capuchinos') and (subestaciondestino <> 'Maternidad') and (subestaciondestino <> 'Artigas') and (subestaciondestino <> 'La Paz') and (subestaciondestino <> 'La Yaragua') and (subestaciondestino <> 'Carapita') and (subestaciondestino <> 'Antiman') and (subestaciondestino <> 'Mamera') and (subestaciondestino <> 'Carapita') and (subestaciondestino <> 'Ruiz Pineda/Las Adjuntas') then writeln('sub estacion incorrecta');
								until (subestaciondestino = 'Zona Rental') or (subestaciondestino = 'Parque Central') or (subestaciondestino = 'Nuevo Circo') or (subestaciondestino = 'Teatros') or (subestaciondestino = 'Capuchinos') or (subestaciondestino = 'Maternidad') or (subestaciondestino = 'Artigas') or (subestaciondestino = 'La Paz') or (subestaciondestino = 'La Yaragua') or (subestaciondestino = 'Carapita') or (subestaciondestino = 'Antiman') or (subestaciondestino = 'Mamera') or (subestaciondestino = 'Carapita') or (subestaciondestino = 'Ruiz Pineda/Las Adjuntas') ;
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
						  gotoxy(15,3);writeln('|----------------------|-----------------------|-----------------------|');
						  gotoxy(15,4);writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
						  gotoxy(15,5);writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
						  gotoxy(15,6);writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
						  gotoxy(15,7);writeln('|----------------------|-----------------------|-----------------------|');
						  writeln('');
						  textcolor(white);
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
							gotoxy(15,4);writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
							gotoxy(15,5);writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
							gotoxy(15,6);writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
							gotoxy(15,7);writeln('|----------------------|-----------------------|-----------------------|');
							writeln('');
							textcolor(white);
							writeln('Para el boleto N°', ndeboleto);
							writeln('');
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Bello Monte') and (subestacionsalida <> 'Las Mercedes') and (subestacionsalida <> 'Parque Simon Bolivar') and (subestacionsalida <> 'Boleita') and (subestacionsalida <> 'El Marquez') and (subestacionsalida <> 'Warairarepano') and (subestacionsalida <> 'Bello Campo') and (subestacionsalida <> 'Hugo Chaves') and (subestacionsalida <> 'Montecristo')  then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'Bello Monte') or (subestacionsalida = 'Las Mercedes') or (subestacionsalida = 'Parque Simon Bolivar') or (subestacionsalida = 'Boleita') or (subestacionsalida = 'El Marquez') or (subestacionsalida = 'Warairarepano') or (subestacionsalida = 'Bello Campo') or (subestacionsalida = 'Hugo Chaves') or (subestacionsalida = 'Montecristo');
								
								repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'Bello Monte') and (subestaciondestino <> 'Las Mercedes') and (subestaciondestino <> 'Parque Simon Bolivar') and (subestaciondestino <> 'Boleita') and (subestaciondestino <> 'El Marquez') and (subestaciondestino <> 'Warairarepano') and (subestaciondestino <> 'Bello Campo') and (subestaciondestino <> 'Hugo Chaves') and (subestaciondestino <> 'Montecristo')  then writeln('sub estacion incorrecta');
								until (subestaciondestino = 'Bello Monte') or (subestaciondestino = 'Las Mercedes') or (subestaciondestino = 'Parque Simon Bolivar') or (subestaciondestino = 'Boleita') or (subestaciondestino = 'El Marquez') or (subestaciondestino = 'Warairarepano') or (subestaciondestino = 'Bello Campo') or (subestaciondestino = 'Hugo Chaves') or (subestaciondestino = 'Montecristo');
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
						  gotoxy(15,3);writeln('|----------------------|-----------------------|');
						  gotoxy(15,4);writeln('|-Zoologico            |-La Rinconada          |');
						  gotoxy(15,5);writeln('|----------------------|-----------------------|');
						  writeln('');
						  textcolor(white);
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
							gotoxy(15,3);writeln('|----------------------|-----------------------|');
							gotoxy(15,4);writeln('|-Zoologico            |-La Rinconada          |');
							gotoxy(15,5);writeln('|----------------------|-----------------------|');
							writeln('');
							textcolor(white);
							writeln('Para el boleto N°', ndeboleto);
							writeln('');
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Zoologico') and (subestacionsalida <> 'La Rinconada')  then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'Zoologico') or (subestacionsalida = 'La Rinconada');
								
								Repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino<> 'Zoologico') and (subestaciondestino <> 'La Rinconada') then writeln ('sub estacion incorrecta');
								until (subestaciondestino = 'Zoologico') or (subestaciondestino = 'La Rinconada');
								
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
						  gotoxy(15,3);writeln('|--------------------|---------------------|--------------------------|');
						  gotoxy(15,4);writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
						  gotoxy(15,5);writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
						  gotoxy(15,6);writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
						  gotoxy(15,7);writeln('|-La Hoyada          |-INCES               |                          |');	
						  gotoxy(15,8);writeln('|--------------------|---------------------|--------------------------|');
						  writeln('');
						  textcolor(white);
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
							gotoxy(15,4);writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
							gotoxy(15,5);writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
							gotoxy(15,6);writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
							gotoxy(15,7);writeln('|-La Hoyada          |-INCES               |                          |');	
							gotoxy(15,8);writeln('|--------------------|---------------------|--------------------------|');
							writeln('');
							textcolor(white);
							writeln('Para el boleto N°', ndeboleto);
							writeln('');
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Las Flores') and (subestacionsalida <> 'Panteon') and (subestacionsalida <> 'Socorro') and (subestacionsalida <> 'La Hoyada') and (subestacionsalida <> 'El Cristo') and (subestacionsalida <> 'Roca Tarpeya') and (subestacionsalida <> 'Presidente Medina') and (subestacionsalida <> 'INCES') and (subestacionsalida <> 'Roosevelt') and (subestacionsalida <> 'La Bandera') and (subestacionsalida <> 'Los Ilustres') then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'Las Flores') or (subestacionsalida = 'Panteon') or (subestacionsalida = 'Socorro') or (subestacionsalida = 'La Hoyada') or (subestacionsalida = 'El Cristo') or (subestacionsalida = 'Roca Tarpeya') or (subestacionsalida = 'Presidente Medina') or (subestacionsalida = 'INCES') or (subestacionsalida = 'Roosevelt') or (subestacionsalida = 'La Bandera') or (subestacionsalida <> 'Los Ilustres');
								
								Repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'Las Flores') and (subestaciondestino <> 'Panteon') or (subestaciondestino <> 'Socorro') and (subestaciondestino <> 'La Hoyada') and (subestaciondestino <> 'El Cristo') and (subestaciondestino <> 'Roca Tarpeya') and (subestaciondestino <> 'Presidente Medina') and (subestaciondestino <> 'INCES') and (subestaciondestino <> 'Roosevelt') and (subestaciondestino <> 'La Bandera') and (subestaciondestino <> 'Los Ilustres') then writeln('sub estacion incorrecta');
								until (subestaciondestino = 'Las FLores') or (subestaciondestino = 'Panteon') or (subestaciondestino = 'Socorro') or (subestaciondestino = 'La Hoyada') or (subestaciondestino = 'El Cristo') or (subestaciondestino = 'Roca Tarpeya') or (subestaciondestino = 'Presidente Medina') or (subestaciondestino = 'INCES') or (subestaciondestino = 'Roosevelt') or (subestaciondestino = 'La Bandera') or (subestaciondestino = 'Los Ilustres');
								
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
						  gotoxy(15,3);writeln('|--------------------|---------------------|--------------------------|');
						  gotoxy(15,4);writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
						  gotoxy(15,5);writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
						  gotoxy(15,6);writeln('|--------------------|---------------------|--------------------------|');
						  writeln('');
						  textcolor(white);
						  writeln('La cantidad de boletos comprados son ',c);
						  writeln('');
						  writeln('Debera asignar una sub estacion de salida y una subestacion de destino por cada boleto que compro');
						  writeln('Recuerde ingresar los nombres de manera correcta o no se asignara la estacion'); 
						  writeln('(Sea cuidadoso con el uso de las Mayusculas, minusculas, simbolos y espacios)');
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
							gotoxy(15,4);writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
							gotoxy(15,5);writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
							gotoxy(15,6);writeln('|--------------------|---------------------|--------------------------|');
							writeln('');
							textcolor(white);
							writeln('Para el boleto N°', ndeboleto);
							writeln('');
								repeat
								writeln('Seleccione la sub estacion de salida');
								readln(subestacionsalida);
									if (subestacionsalida <> 'Petare 2') and (subestacionsalida <> '19 de Abril') and (subestacionsalida <> '5 de Julio') and (subestacionsalida <> '24 de Julio') and (subestacionsalida <> 'Warairarepano') and (subestacionsalida <> 'Caricuao') then writeln('sub estacion incorrecta');
								until (subestacionsalida = 'Petare 2') or (subestacionsalida = '19 de Abril') or (subestacionsalida = '5 de Julio') or (subestacionsalida = '24 de Julio') or (subestacionsalida = 'Warairarepano') or (subestacionsalida = 'Caricuao'); 
								
								repeat
								writeln('Seleccione la sub estacion de destino');
								readln(subestaciondestino);
									if (subestaciondestino <> 'Petare 2') and (subestaciondestino <> '19 de Abril') and (subestaciondestino <> '5 de Julio') and (subestaciondestino <> '24 de Julio') and (subestaciondestino <> 'Warairapenao') and (subestaciondestino <> 'Caricuao') then writeln('sub estacion incorrecta');
								until (subestaciondestino = 'Petare 2') or (subestaciondestino = '19 de Abril') or (subestaciondestino = '5 de Julio') or (subestaciondestino = '24 de Julio') or (subestaciondestino = 'Warairarepano') or (subestaciondestino = 'Caricuao');
								
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
						clrscr();
						textcolor(green);
						gotoxy(40,1);writeln('D A T O S   D E   L A   C O M P R A');
						gotoxy(1,3);writeln('|-------------------------------------------------------------------------------------------------------------|');
						gotoxy(3,5);writeln('| -Nombre: ', nombre);
						gotoxy(4,7);writeln('| --Apellido: ', apellido);
						gotoxy(5,9);writeln('| ---Cedula: ', cedula);
						gotoxy(1,11);writeln('|-------------------------------------------------------------------------------------------------------------|');
						writeln('');
						gotoxy(5,13);writeln('|-----SUB ESTACIONES DE SALIDA ASIGNADAS:');
						writeln('');
						gotoxy(10,14);writeln('**',subestacionsalidatotal,'**');
						writeln('');
						gotoxy(5,16);writeln('|-----SUB ESTACIONES DE DESTINO ASIGNADAS:');
						writeln('');
						gotoxy(10,17);writeln('**',subestaciondestinototal,'**');
						gotoxy(1,19);writeln('|-------------------------------------------------------------------------------------------------------------|');
							
					end;
					textcolor(white);
					writeln('');
					writeln ('///Esta seguro de su compra? presione 1 si esta de acuerdo, de lo contrario presione 2///');
					readln(seleccion);
					case seleccion of
						1: 
							begin 
							writeln ('///El monto total a pagar es de:');
							textcolor(green);
							writeln('|-------------|');
							writeln('***',precio,'-Dolares***');
							writeln('|-------------|');
							writeln('=============================================');
							writeln('===Ingrese sus datos para realizar el pago===');
							writeln('=============================================');
							writeln('');
							write('/Cedula:');
							readln (cedula2);
							writeln('');
							write('//Ingrese el codigo del banco:');
							readln(codigobanco);
							writeln('');
							write('///Ingrese el numero de telefono:');
							readln(numtelefono);
							writeln('');
							write ('////Ingrese el monto a pagar:');
							readln(pp);
							vuelto:=pp-precio;
							textcolor(white);
						
								if precio>pp then
									begin
										repeat
										begin
										writeln ('Saldo insuficiente');
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
							writeln('Presione [Enter] para continuar');
							readln();
							end;
							
			   clrscr();
			   gotoxy(35,2);writeln('Que desea hacer ahora?');
			   writeln('');
			   textcolor(green);
			   gotoxy(5,3);writeln('/========================================================/');
			   textcolor(white);
			   gotoxy(10,4);writeln('Seleccione alguna de las siguientes opciones');
			   writeln('');
			   gotoxy(10,6);writeln('1.Salir del sistema');
			   writeln('');
			   gotoxy(10,8);writeln('2.Utilizar Boleto');
			   writeln('');
			   gotoxy(10,10);writeln('3.Ver sistema');
			   writeln('');
			   textcolor(green);
			   gotoxy(5,11);writeln('/========================================================/');
			   readln(seleccionsistema);
				
				case seleccionsistema of
				1:
					begin
					textcolor(white);
					writeln('Tenga buen dia');
					writeln('Presione enter para cerrar el sistema [Enter]');
					readln();
					bucletotalseleccion := 2;
					end;
				
				2:
					begin
					textcolor(green);
					cdeboletosusadostotal := cdeboletosusados + cfinal;
					cdeboletosusados :=cdeboletosusadostotal;
					clrscr();
					gotoxy(20,1);writeln('/===============================================================/');
					gotoxy(45,2);writeln('UTILIZAR BOLETO');
					gotoxy(20,3);writeln('/===============================================================/');
					textcolor(white);
					writeln('');
					writeln('////El dia de hoy han sido usados ', cdeboletosusados, ' En la estacion de metro de Caracas////');
					writeln('');
					writeln('=Desea utilizar un boleto?=');
					writeln('');
					writeln('1.Si');
					writeln('');
					writeln('2.No');
					writeln('');
					readln(usarboleto);
					
						if usarboleto = 1 then
							begin 
							cboletosrestantes := cfinal;
							writeln('****sus boletos son ', cfinal,'****');				
							writeln('');
							
								repeat
							
								writeln('///Ingrese el numero de cedula con el cual compro su boleto///');
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
								writeln('/====================================/');
								writeln('El boleto ha sido usado correctamente');
								writeln('/====================================/');
								writeln('');
								writeln('//Le quedan ', cboletosrestantes, ' boletos//');
								writeln('');
								writeln('---Desea usar otro boleto?');
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
							writeln('¿Desea comprar mas boletos?');
							writeln('');
							writeln('1.Si');
							writeln('');
							writeln('2.No');
							readln(bucletotalseleccion);
								if bucletotalseleccion = 2 then
									begin
										Writeln('Tenga un buen dia');
										Writeln('Presione Enter para finalizar el programa');
										readln();
									end;

							end;
							
				end;
				
				3:
					begin
						repeat
						textcolor(green);
						writeln('/===============================/');
						textcolor(white);
						write('---Ingrese su clave de usuario:');
						readln(clavevs);
						textcolor(white);
						
							if contrasena <> clavevs then writeln('Clave incorrecta')
							else
						
						until contrasena = clavevs;
					
					clrscr();
					textcolor(green);
					gotoxy(25,1);writeln('/================================================/');
					textcolor(white);
					gotoxy(30,2);writeln('Cual parte del sistema desea visualizar?');
					textcolor(green);
					gotoxy(25,3);writeln('/================================================/');
					writeln('');
					textcolor(white);
					writeln('1.Cantidad de personas que han ingresado por linea');
					writeln('');
					writeln('2.Promedio de ventas por linea a la semana');
					writeln('');
					writeln('3.Cantidad de boletos utilizados');
					readln(partesistema);
					
						case partesistema of
							1:
								begin
								clrscr();
								cdepersonastotal := cdepersonasl1 + cdepersonasl2 + cdepersonasl3 + cdepersonasl4 + cdepersonasl5 + cdepersonasl6 + cdepersonasl7 + cdepersonasl8;
								textcolor(green);
								gotoxy(25,1);writeln('/========================================================/');
								textcolor(white);
								gotoxy(30,2);writeln('CANTIDAD DE PERSONAS QUE HAN INGRESADO POR LINEA'); 
								textcolor(green);
								gotoxy(25,3);writeln('/========================================================/');
								writeln(''); 
								textcolor(green);
								gotoxy(1,4);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 1" el dia de hoy es: ',cdepersonasl1);
								writeln(''); 
								textcolor(green);
								gotoxy(1,6);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 2" el dia de hoy es: ',cdepersonasl2);
								writeln(''); 
								textcolor(green);
								gotoxy(1,8);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 3" el dia de hoy es: ',cdepersonasl3);
								writeln(''); 
								textcolor(green);
								gotoxy(1,10);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 4" el dia de hoy es: ',cdepersonasl4);
								writeln(''); 
								textcolor(green);
								gotoxy(1,12);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 5" el dia de hoy es: ',cdepersonasl5);
								writeln('');
								textcolor(green);
								gotoxy(1,14);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 6" el dia de hoy es: ',cdepersonasl6);
								writeln('');
								textcolor(green); 
								gotoxy(1,16);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA 7" el dia de hoy es: ',cdepersonasl7);
								writeln(''); 
								textcolor(green);
								gotoxy(1,18);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado a la "LINEA CLABETREN" el dia de hoy es: ',cdepersonasl8);
								writeln('');
								textcolor(green); 
								gotoxy(1,20);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La cantidad de personas que han ingresado al metro de Caracas el dia de hoy es: ',cdepersonastotal);
								writeln(''); 
								textcolor(green);
								gotoxy(1,22);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln(''); 
								writeln('Presione enter para cerrar el sistema [Enter]');
								readln();
								bucletotalseleccion := 2;
								end;
							
							2:
								begin
								clrscr();
								textcolor(green);
								gotoxy(25,1);writeln('/=================================================/');
								textcolor(white);
								gotoxy(30,2);writeln('PROMEDIO DE VENTAS POR LINEA A LA SEMANA'); 
								textcolor(green);
								gotoxy(25,3);writeln('/=================================================/');
								writeln('');  
								gotoxy(1,4);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 1" tiene un promedio de ventas semanales de: ', pdeventasl1);
								writeln('');
								textcolor(green); 
								gotoxy(1,6);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 2" tiene un promedio de ventas semanales de: ', pdeventasl2);
								writeln('');
								textcolor(green);
								gotoxy(1,8);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 3" tiene un promedio de ventas semanales de: ', pdeventasl3);
								writeln('');
								textcolor(green); 
								gotoxy(1,10);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 4" tiene un promedio de ventas semanales de: ', pdeventasl4);
								writeln('');
								textcolor(green); 
								gotoxy(1,12);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 5" tiene un promedio de ventas semanales de: ', pdeventasl5);
								writeln('');
								textcolor(green); 
								gotoxy(1,14);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 6" tiene un promedio de ventas semanales de: ', pdeventasl6);
								writeln('');
								textcolor(green); 
								gotoxy(1,16);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA 7" tiene un promedio de ventas semanales de: ', pdeventasl7);
								writeln('');
								textcolor(green); 
								gotoxy(1,18);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('La "LINEA CLABETREN" tiene un promedio de ventas semanales de: ', pdeventasl8);
								writeln('');
								textcolor(green); 
								gotoxy(1,20);writeln('|-------------------------------------------------------------------------------------------------|');
								textcolor(white);
								writeln('');
								writeln('Presione enter para cerrar el sistema [Enter]');
								readln();
								bucletotalseleccion := 2;
								
								end;
							
							3:
							begin
								writeln ('/////La cantidad de boletos usados fue de:',cdeboletosdiadehoy,'/////');  {Se agrego el mensaje de la cantidad de boletos usada}
						
								writeln('');
								writeln('Presione enter para cerrar el sistema [Enter]');
								readln();
								bucletotalseleccion := 2;
							
							
							end;
						
						
						end;
			
					end;
			
				end;
								
						end;
						
						2:
							begin
							writeln('Hasta luego, tenga feliz dia.');
							bucletotalseleccion := 2;
							end;
					end;

			end;
	
	2:
		begin
		writeln('Hasta luego, tenga feliz dia.'); 
		readln();
		end;
			
		end;

until bucletotalseleccion = 2;

end.

{
* Programa finalizado :´D
* 
* Considero que el programa fue las experiencias que vivimos en el camino...
}

