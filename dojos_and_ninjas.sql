INSERT INTO dojos (name)
VALUES ("CodingDojo"),
("Master Shifu"),
("Master Uugway");

SET SQL_SAFE_UPDATES = 0;
DELETE from dojos;

INSERT INTO dojos (name)
VALUES ("CodingDojo"),
("Master Shifu"),
("Master Uugway");

INSERT INTO ninjas (first_name,last_name,age,dojos_id)
VALUES ("Jacob", "Ehrler", 24, 97),
("Sasuke", "Uchiha", 17, 97),
("Naruto", "Uzamaki", 17, 97);

INSERT INTO ninjas (first_name,last_name,age,dojos_id)
VALUES ("Jacob", "Ehrler", 24, 98),
("Itachi", "Uchiha", 17, 98),
("Minato", "Uzamaki", 17, 98);

INSERT INTO ninjas (first_name,last_name,age,dojos_id)
VALUES ("Jacob", "Ehrler", 24, 99),
("Madara", "Uchiha", 17, 99),
("Hashirama", "Senju", 17, 99);

SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojos_id
WHERE dojos.id = 97;

SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojos_id
WHERE dojos.id = 99;

SELECT * FROM dojos
WHERE dojos.id = (SELECT dojos_id FROM ninjas ORDER BY dojos_id DESC LIMIT 1);



