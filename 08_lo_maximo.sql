-- Eres lo maximo
SELECT fecha_incorporacion
FROM platzi.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1;

SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;

-- minimo nombre alfabeticamente general y por id de tutor
SELECT nombre
FROM platzi.alumnos
ORDER BY nombre ASC
LIMIT 1;

SELECT tutor_id, MIN(nombre)
FROM platzi.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;


