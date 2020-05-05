begin
update emp set sal=sal+1000 where deptno=&dno;

if sql%notfound then
dbms_output.put_line('no rows updates');
else
dbms_output.put_line(sql%rowcount || ' rows updated ');
end if;
end;