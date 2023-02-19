program Compra_de_boletos;
uses crt;
var a,c,d,e,f,g,h,i,j,k,l,cedula,precio,precio2,precio3,precio4,precio5,precio6,precio7,precio8,precio9,seleccion:integer;
nombre, apellido, boletos, si, tipodeviaje: char;

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
			end;
				begin
					writeln ('Eliga el tipo de boleto:'); {existen gran variedad de boletos, cada uno con un color, precio y cobertura}
			
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
			
					writeln('Si no encuentra su boleto deseado presione la tecla 1');
					readln(seleccion);
			
						if seleccion = 1 then
			
						begin
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
			
						readln(boletos); {agregando boletos}
			
						end
						else 
		
			readln(boletos);
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
						readln (d);
						precio2:=d*p2;
						if d>0 then
						writeln ('su coste es de:',precio2,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'c':begin
						writeln('El boleto ida y vuelta tiene una cobertura de: 2 viajes en metro');
						writeln ('cuantos boletos quiere comprar?');
						readln (e);
						precio2:=e*p3;
						if e>0 then
						writeln ('su coste es de:',precio3,'-dolares')
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
						readln (f);
						precio3:=f*p4;
						if f>0 then
						writeln ('su coste es de:',precio3,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
						end;
					'e':begin
						writeln('El boleto multiabono tiene una cobertura de: 10 viajes en metro');
						writeln ('cuantos boletos desea comprar?');
						readln (g);
						precio4:=g*p5;
						if g>0 then
						writeln ('su coste es de:',precio4,'-dolares')
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
						readln (h);
						precio5:=h*p6;
						if h>0 then
						writeln ('su coste es de:',precio5,'-dolares')
						else
						writeln ('hasta luego, tenga feliz dia.');
				
						end;
					'g':begin
						writeln('El boleto estudiantil simple tiene una cobertura de: 10 viajes en metro');
						writeln('cuantos boletos quiere comprar?');
						readln(i);
						precio6:=i*p7;
						if i>0 then
						writeln ('su coste es de:',precio6,'-dolares')
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
						readln(j);
						precio7:=j*p8;
						if j>0 then
						writeln ('su coste es de:',precio7,'-dolares')
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
						readln(k);
						precio8:=k*p9;
						if k>0 then
						writeln('su coste es de:',precio8,'-dolares')
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
						readln(l);
						precio9:=l*p10;
						if l>0 then
						writeln ('su coste es de:',precio9,'-dolares')
						else
						writeln('hasta luego tenga feliz dia'); {:D}
						end;
					end;
						
						Writeln('Una vez elegido el tipo de boleto que desea comprar');
						Writeln('Debe seleccionar la linea en la cual desea viajar');
						Writeln('Las lineas seran mostradas a continuacion');
						readln();
					
					writeln('Linea 1');
					writeln('|-----------------|------------------|-----------------|-----------------|');
					writeln('|-Propatria       |-Capitolio        |-Plaza Venezuela |-Miranda         |');
					writeln('|-Perez Bonald    |-La Hoyada        |-Sabana Grande   |-Los Dos Caminos |');
					writeln('|-Plaza Sucre     |-Parque Carabobo  |-Chacaito        |-Los Cortijos    |');
					writeln('|-Gato Negro      |-Bellas Artes     |-Chacao          |-La California   |');
					writeln('|-Agua Salud      |-Colegio de Ing.  |-Altamira        |-Petare          |');
					writeln('|-Cano Amarillo   |                  |                 |-Palo Verde      |');		
					writeln('|-----------------|------------------|-----------------|-----------------|');
					writeln('');
					writeln('Linea 2');
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('|-El Silencio        |-La Paz              |-Mamera                   |');
					writeln('|-Capuchinos         |-La Yaguara          |-Caricuao                 |');
					writeln('|-Maternidad         |-Carapita            |-Zoologico                |');
					writeln('|-Artiguas           |-Antimano            |-Ruiz Pineda/Las adjuntas |');	
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('');
					writeln('Linea 3');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('|-Plaza Venezuela      |-La Bandera            |-Coche                 |');
					writeln('|-Ciudad Universitaria |-El Valle              |-Mercado               |');
					writeln('|-Los Simbolos         |-Los Jardines          |-La Rinconada          |');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('');
					writeln('Linea 4');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('|-Zona Rental          |-Maternidad            |-Antiman               |');
					writeln('|-Parque Central       |-Artigas               |-Mamera                |');
					writeln('|-Nuevo Circo          |-La Paz                |-Ruiz Pineda/ Las      |');
					writeln('|-Teatros              |-La Yaragua            | Adjuntas              |');
					writeln('|-Capuchinos           |-Carapita              |                       |');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('');
					writeln('Linea 5');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('|-Bello Monte          |-Bello Campo           |-Boleita               |');
					writeln('|-Las Mercedes         |-Hugo Chaves           |-El Marquez            |');
					writeln('|-Parque Simon Bolivar |-Montecristo           |-Warairarepano         |');
					writeln('|----------------------|-----------------------|-----------------------|');
					writeln('');
					writeln('Linea 6');
					writeln('|----------------------|-----------------------|');
					writeln('|-Zoologico            |-La Rinconada          |');
					writeln('|----------------------|-----------------------|');
					writeln('');
					writeln('Linea 7');
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('|-Las Flores         |-El Cristo           |-Roosevelt                |');
					writeln('|-Panteon            |-Roca Tarpeya        |-La Bandera               |');
					writeln('|-Socorro            |-Presidente Medina   |-Los Ilustres             |');
					writeln('|-La Hoyada          |-INCES               |                          |');	
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('');
					writeln('CLABETREN');
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('|-Petare 2           |-5 de Julio          |-Warairarepano            |');
					writeln('|-19 de Abril        |-24 de Julio         |-Caricuao                 |');
					writeln('|--------------------|---------------------|--------------------------|');
					writeln('');
					
					
					
					
			
					writeln('Si no encuentra su boleto deseado presione la tecla 1');
					readln(seleccion);
		
					if seleccion = 1 then
		
		
		
					else
						
						
				END;

		end;
	end;

end.
