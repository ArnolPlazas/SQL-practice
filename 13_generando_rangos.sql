-- Generando rangos

SELECT *
FROM generate_series(1, 5);

SELECT *
FROM generate_series(5, 1, -2);

SELECT *
FROM generate_series(1.1, 4, 1.3);

SELECT current_date + s.a AS dates
FROM generate_series(0, 14, 7) AS s(a);

SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp,
					 '2020-09-04 12:00:00'::timestamp,
					'10 hours');
					
SELECT a.id,
	   a.nombre,
	   a.apellido,
	   a.carrera_id,
	   s.a
FROM platzi.alumnos AS a
INNER JOIN generate_series(0, 10) S(a)
ON s.a = a.carrera_id
ORDER BY A.carrera_id;


-- Reto: Generar un triangulo
SELECT lpad('*', CAST(ORDINALITY AS int), '*')
FROM generate_series(10, 2, -2) WITH ORDINALITY;

-- Generate independent ordinality --
SELECT  *
FROM    generate_series(1,10) WITH ordinality;

-- Use ordinality for lpad --
SELECT  lpad('*', CAST(ordinality AS int), '*')
FROM    generate_series(1,10) WITH ordinality;

-- Probando en series distintas --
SELECT  lpad('*', CAST(ordinality AS int), '*')
FROM    generate_series(10,2, -2) WITH ordinality;