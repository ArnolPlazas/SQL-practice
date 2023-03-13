-- Selectores de rango
SELECT *
FROM platzi.alumnos
WHERE tutor_id IN (1, 2, 3, 4);

SELECT *
FROM platzi.alumnos
WHERE tutor_id >= 1 AND tutor_id <= 4;

SELECT *
FROM platzi.alumnos
WHERE tutor_id BETWEEN 1 AND 4;


SELECT int4range(10, 20) @> 3; -- generar un rango de enteros de 10 a 20 y preguntar si 3 esta en ese rango. -> false

SELECT numrange(11.1, 22.2) && numrange(20.0, 30.0); -- Si existe la intersección entre los dos rangos de numeros flotantes. -> true

SELECT UPPER(int8range(15, 25)); -- El valor mas alto del rango ->25
SELECT LOWER(int8range(15, 25)); -- El valor mas bajo del rango -> 15

SELECT int4range(10, 20) * int4range(15, 25);  -- genera la intersección entre los rangos -> [15,20)

SELECT isempty(numrange(1,5)); -- Si el rango esta vacio -> false


-- tutor id que este entre 10 a 20
SELECT *
FROM platzi.alumnos
WHERE int4range(10,20) @> tutor_id;

--reto: intersección entre id carrera y id tutor
SELECT numrange(
	(SELECT MIN(tutor_id) FROM platzi.alumnos),
	(SELECT MAX(tutor_id) FROM platzi.alumnos))
      * numrange(
	(SELECT MIN(carrera_id) FROM platzi.alumnos),
	(SELECT MAX(carrera_id) FROM platzi.alumnos));