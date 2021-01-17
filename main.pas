
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

var
    s:string;
    next:boolean;
begin
    next := true;
    while next do begin
        write('> ');
        readln(s);
        if s = 'sin' then sinus()
        else if s = 'exit' then next := false
        else if s = 'cos' then cosinus();
        {add precedures 1) ax^2+bx+c = 0    2) no such command }
    end;
end.
