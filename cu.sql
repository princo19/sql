declare
n emp.ename%type;
s emp.sal%type;
cursor c1 is select ename,sal from emp where deptno=&dno order by sal;
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
dbms_output.put_line('total rows fetched:' || c1%rowcount);
close c1;
if c1%isopen then
dbms_output.put_line('cursor is open');
else
dbms_output.put_line('cursor is not open');
end if;
exception
when others then
dbms_output.put_line('eroor msg is ' || sqlerrm);
end;
	