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
p10 = 11; {se agregaron las variables y constantes}

BEGIN
clrscr();
	writeln('Bienvenido a la estacion de metro de Caracas');
	writeln ('Desea comprar un boleto? teclee el numero 1, de ser el caso contrario teclee el numero 2');
	readln (a);
	case a of
	1: begin
	begin
		writeln ('ingrese sus datos');
		writeln ('cedula:');
			readln (cedula);
		writeln('Nombre:');
			readln(nombre);
		writeln ('apellido:');
			readln(apellido);
	end; {Sistema para ingresar datos}

begin
		writeln ('Eliga el tipo de boleto:'); {existen gran variedad de boletos, cada uno con un color, precio y cobertura}
		
		writeln('a.simple-------->Color:amarillo');
		writeln ('');
		writeln ('b.integral-------->Color:amarillo');
		writeln('');
		writeln ('c.ida y vuelta-------->Color:amarillo');
		writeln('');
		writeln ('d.ida y vuelta integrado-------->Color:amarillo');
		writeln('');
		writeln('e.multiabono-------->Color:naranja');
		writeln('');
		writeln('f.multiabono integrado-------->Color:naranja');
		writeln('');
		writeln ('g.Estudiantil simple-------->Color:azul');
		writeln('');
		writeln( 'h.estudiantil integrado-------->Color:azul');
		writeln('');
		writeln('i.metro Tarjeta-------->Color:rojo');
		writeln('');
		writeln ('j.metro Tarjeta integrado-------->Color:rojo');
		writeln('');
		readln(boletos); {agregando boletos}

        case boletos of {sistema de compra de boletos}
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
		 writeln('El boleto integrado tiene una cobertura de: 1 viaje en metro y 1 viaje en metrobus');
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
		writeln ('el boleto ida y vuelta integrado tiene una cobertura de: 2 viajes en metro y 2 viajes en metrobus');
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
		writeln('El boleto multiabono integrado tiene una cobertura de: 10 viajes en metro y 10 viajes en metrobus');
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
		writeln('El boleto estudiantil integrado tiene una cobertura de: 10 viajes en metro y 20 viajes en metrobus');
		writeln('cuantos boletos quiere comprar?');
		readln(j);
		precio7:=j*p8;
		if j>0 then
		writeln ('su coste es de:',precio7,'-dolares')
		else
		writeln('hasta luego, tenga feliz dia');
		end;
		'i':begin
		writeln('El boleto metroTarjeta tiene una cobertura de: 20, 30, y 40 viajes');
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
		writeln ('cuantos boletos quiere comprar?');
		readln(l);
		precio9:=l*p10;
		if l>0 then
		writeln ('su coste es de:',precio9,'-dolares')
		else
		writeln('hasta luego tenga feliz dia'); {Despedida en caso de no querer boletos}
		end;
	end;
	
	
	
END;

end;
end;
end.
