
program Helper;
const
    message = 'Hello, world!';


procedure sinus();
    var x:real;
begin
    write('Please enter x: ');
    readln(x);
    writeln('sin(',x:0:0,') = ',sin(x):0:3);
end;


procedure cosinus();
    var x:real;
begin
    write('Please enter x: ');
    readln(x);
    writeln('cos(',x:0:0,') = ',cos(x):0:3);
end;


procedure eq2();
    var
	a,b,c,d,x1,x2:real;
begin
    writeln('введите коэффициенты a,b,c соответственно');
    readln(a);
    readln(b);
    readln(c);
 if (a=0) then writeln('Уравнение не является квадратным')
 else
    begin
        writeln('решаем: ',a:0:0,'x^2 + ',b:0:0, 'x + ',c:0:0, ' = 0');
        D:=sqr(b)-4*a*c;
        writeln('D=',d:0:0);
        If d>0 then
       	    begin writeln('Уравнение имеет 2-а корня');
       	        x1:=(-b+sqrt(D))/(2*a); 
 	        x2:=(-b-sqrt(D))/(2*a);
      	        writeln('x1= ',x1:0:0,' x2= ',x2:0:0);
	    end;
	If d=0 then
        	begin
		    writeln('Уравнение имеет 1 корень');
                    x1:=(-b)/(2*a);
	            writeln('x1=',x1:0:0);
                end;
	If d<0 then  writeln('Уравнение не имеет корней');
     end;
end;



var
    command:string;
    next:boolean;
begin
    next := true;
    while next do begin
        write('> ');
        readln(command);
        if command = 'sin' then sinus()
        else if command = 'cos' then cosinus()
        else if command = 'eq2' then eq2()
        else if command = 'exit' then next := false;
        {add precedures 1) ax^2+bx+c = 0    2) no such command }
    end;
end.
