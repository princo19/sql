declare 
n emp.ename%type;
s emp.sal%type;
cursor c1 is select ename,sal from emp where sal>2500;
begin
open c1;
loop
fetch c1 into n,s;
exit when c1%notfound;
dbms_output.put_line(n || ' has salary ' || s);
end loop;
dbms_output.put_line(' total rows fetched '||c1%ROWCOUNT);
close c1; 
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('ERROR MESSAGE IS '||SQLERRM);
end;
