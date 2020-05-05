declare 
n emp.ename%type;
s emp.sal%type;
cursor c1 is select ename,sal from emp where deptno=&dno;
begin
open c1;
loop
fetch c1 into n,s;
if c1%found then
 dbms_output.put_line(n || ' has salary ' || s);
else
 exit;
end if;
end loop;
dbms_output.put_line(' total rows fetched '||c1%ROWCOUNT);
close c1; 
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('ERROR MESSAGE IS '||SQLERRM);
end;