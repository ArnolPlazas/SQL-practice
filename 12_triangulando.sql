--Triangulando

SELECT lpad('sql', 15, '*');

SELECT lpad('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;

SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;


--rpad
SELECT rpad('sql', 15, '*');

SELECT rpad('sql', id, '*')
FROM platzi.alumnos
WHERE id < 10;