declare
n emp.ename%type;
s emp.sal%type;
eno emp.empno%type;

begin
select ename,sal into n,s from emp where empno=&eno;
dbms_output.put_line('Name is' || n || ' Salary is ' || s);
exception
when no_data_found then
dbms_output.put_line('employee no' || eno || 'not found');
when others then
dbms_output.put_line('error message is' || sqlerrm);
end;