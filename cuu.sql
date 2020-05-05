declare
cursor c1 is select ename,sal from emp where deptno=&dno;

begin
for i in c1
loop
dbms_output.put_line(i.ename || ' has salary ' || i.sal);
end loop;
dbms_output.put_line('total rows fetched' || c1%rowcount);
end;