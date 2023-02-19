program Compra_de_boletos;
uses crt;
var a,c,d,e,f,g,h,i,j,k,l,cedula,precio,precio2,precio3,precio4,precio5,precio6,precio7,precio8,precio9:integer;
nombre, apellido, boletos, si: char;

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

