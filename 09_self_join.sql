--Egoista (selfish)

-- self join -> alumnos que dan tutoria
SELECT  CONCAT(a.nombre, ' ', a.apellido) AS alumno, CONCAT(t.nombre, ' ', t.apellido) AS tutor
FROM platzi.alumnos AS a
INNER JOIN platzi.alumnos AS t
ON a.tutor_id = t.id;

-- self join -> cuantos alumnos tiene cada alumno que da tutorias, TOP 10
SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
	   COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
INNER JOIN platzi.alumnos AS t
ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10;


--Reto: promedio de alumnos por tutor
SELECT AVG(alumnos_por_tutor) AS promedio_por_tutor
FROM (
	SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
		   COUNT(*) AS alumnos_por_tutor
	FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t
	ON a.tutor_id = t.id
	GROUP BY tutor
) AS alumnos_tutor;