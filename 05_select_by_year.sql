-- seleccionar por año
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019;

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion)) = 2018;

SELECT *
FROM (
	SELECT *,
	DATE_PART('YEAR', fecha_incorporacion) AS incorporation_year
	FROM platzi.alumnos
) AS students_with_year
WHERE incorporation_year = 2020;

--Reto estudiantes que ingresaron en mayo  del 2018
SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('MONTH', fecha_incorporacion)) = 5 AND (DATE_PART('YEAR', fecha_incorporacion)) = 2018;