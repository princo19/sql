declare
a number;
b number;
c number;
begin
a:=&a;
b:=&b;
c:=a/b;
dbms_output.put_line('c = '||c);
exception
--when zero_divide then
--dbms_output.put_line('division by zero occured');
when others then
dbms_output.put_line('erroe message is'||sqlerrm);
end;