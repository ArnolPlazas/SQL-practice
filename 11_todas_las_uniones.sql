-- Todas las uniones

--- LEFT JOIN EXCLUSIVE

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id;


--- LEFT JOIN INCLUSIVE

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
LEFT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;


--- RIGHT JOIN EXCLUSIVE

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
RIGHT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE a.carrera_id IS NULL
ORDER BY a.carrera_id;


--- RIGHT JOIN INCLUSIVE

SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
RIGHT JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;



--- INNER JOIN 
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
INNER JOIN platzi.carreras AS c
ON a.carrera_id = c.id;

-- FULL OUTER JOIN
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
FULL OUTER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
ORDER BY a.carrera_id;

--DIFERENCIA SIMETRICA
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM  platzi.alumnos AS a
FULL OUTER JOIN platzi.carreras AS c
ON a.carrera_id = c.id
WHERE a.id IS NULL OR c.id IS NULL
ORDER BY a.carrera_id  DESC, c.id DESC;
