-- En mis tiempos
SELECT EXTRACT (YEAR FROM fecha_incorporacion) as incorporation_year
FROM platzi.alumnos;


SELECT DATE_PART ('YEAR', fecha_incorporacion) as incorporation_year,
	   DATE_PART ('MONTH', fecha_incorporacion) as incorporation_month,
	   DATE_PART ('DAY', fecha_incorporacion) as incorporation_day
FROM platzi.alumnos;


--reto: extraer horas, minutos y segundos
SELECT EXTRACT (HOUR FROM fecha_incorporacion) as incorporation_hour,
	   EXTRACT (MINUTE FROM fecha_incorporacion) as incorporation_minute,
	   EXTRACT (SECOND FROM fecha_incorporacion) as incorporation_minute
FROM platzi.alumnos;


