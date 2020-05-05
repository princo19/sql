declare
s emp.sal%type;
eno emp.empno%type;
per number;
sal_miss exception;
begin
eno:=&empno;
per:=&per_increase;
select sal into s from emp where empno=eno;
if s is null then
    raise sal_miss;
else
    update emp set sal =sal +sal*per/100 where empno=eno;
end if;
exception
when no_data_found then
dbms_output.put_line('employee number' || eno || ' not found ');
when sal_miss then
dbms_output.put_line('employee number ' || eno || ' has no salary');
when others then
dbms_output.put_line('error message is ' || sqlerrm);
end;