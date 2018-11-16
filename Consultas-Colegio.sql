--1.- Consulta que obtenga todos los profesores de un colegio ordenados por nombre.

select p.ID_RUT_PROFESOR,p.NOMBRE_PROFESOR,p.FECHA_NACIMIENTO_PRO,p.ACTIVO,
p.ID_ASIGNATURA,p.ID_COLEGIO
from profesor p, colegio c
where c.ID_COLEGIO=p.ID_COLEGIO
and c.ID_COLEGIO=1
order by p.NOMBRE_PROFESOR;

--2.- Consulta que obtenga todos los alumnos con promedio rojo por asignatura.
select a.ID_RUT_ALUMNO, a.NOMBRE_ALUMNO, a.FECHA_NACIMIENTO_ALUM, a.ID_COLEGIO,
n.NOTA,asi.ID_ASIGNATURA,asi.NOMBRE_ASIGNATURA
from ALUMNO a, NOTA n, ASIGNATURA asi
where a.ID_RUT_ALUMNO=n.ID_RUT_ALUMNO
and n.ID_ASIGNATURA=asi.ID_ASIGNATURA
and n.NOTA<=3.9;

--3.- Consulta que contenga el alumno con mejor nota por asignatura.

select MAX(n.NOTA),n.ID_ASIGNATURA, asi.NOMBRE_ASIGNATURA
from ALUMNO a, NOTA n, ASIGNATURA asi
where a.ID_RUT_ALUMNO=n.ID_RUT_ALUMNO
and n.ID_ASIGNATURA=asi.ID_ASIGNATURA
group by asi.ID_ASIGNATURA, n.ID_ASIGNATURA, asi.NOMBRE_ASIGNATURA;

select a.NOMBRE_ALUMNO,MAX(n.NOTA)
from ALUMNO a, NOTA n 
where a.ID_RUT_ALUMNO = n.ID_RUT_ALUMNO
group by a.NOMBRE_ALUMNO;