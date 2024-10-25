CREATE USER 'Amelia' IDENTIFIED BY '1234';
drop user 'Amelia';
CREATE USER 'Amelia'@'localhost' IDENTIFIED BY '1234';

GRANT SELECT
ON animales.animal
TO 'Amelia'@'localhost';
