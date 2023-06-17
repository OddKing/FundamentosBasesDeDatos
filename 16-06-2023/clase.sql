use empresa;

#Between
select Emp_Rut as 'RUT',Emp_Nombre,Emp_Apellido,Emp_Sueldo as 'Sueldo'
from empleado
where Emp_sueldo between 600000 and 2000000;

#count
select count(*)
from empleado
where Emp_sueldo between 600000 and 2000000;

#like
select Emp_Rut as 'RUT',Emp_Nombre,Emp_Apellido,Emp_Sueldo as 'Sueldo'
from empleado
where (Emp_sueldo between 600000 and 2000000) and Emp_Nombre like ('a%');


#IN
select Emp_Rut as 'RUT',Emp_Nombre,Emp_Apellido,Emp_Sueldo as 'Sueldo',Emp_ID_Comuna
from empleado
where emp_id_comuna in (6,9,17);

#not
select *
from empleado
where Emp_Nombre not like 'a%';

#compardor
select * 
from empleado
where Emp_Sueldo > 1000000;

#seleciona 
select distinct(Emp_ID_Comuna)
from empleado;


#inner join 
select A.emp_nombre ,B.com_nombre
from empleado as A inner join comuna as B
on A.Emp_ID_Comuna = B.Com_ID;







