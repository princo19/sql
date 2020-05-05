begin
update emp set sal = sal-0.02 where deptno=&dno;
if sql%notfound then
 DBMS_OUTPUT.PUT_LINE('no rows updated');
else
 DBMS_OUTPUT.PUT_LINE(sql%rowcount || 'rows updated');
end if;
end;