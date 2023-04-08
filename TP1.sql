CREATE TABLE etude(
	code varchar(20) PRIMARY KEY,
	nom varchar(20)
);

INSERT INTO etude (code,nom)
VALUES
('A1','Eric');

INSERT INTO etude (code,nom)
VALUES
('B1','NARITA');

INSERT INTO etude (code,nom)
VALUES
('C1','ANAS');


SET SERVEROUTput on;
DECLARE
v_nom etude.nom%Type;
BEGIN
SELECT etude.NOM
INTO v_nom
FROM etude
WHERE code='C1';
DBMS_output.put_line('le nom pour le code C1 est : ' || v_nom);
END;

1-
CREATE TABLE etude(
	code varchar(20) PRIMARY KEY,
	nom varchar(20);
);

2-
INSERT INTO etude (code,nom)
VALUES
("A1","Eric");

INSERT INTO etude (code,nom)
VALUES
("B1","NARITA");

INSERT INTO etude (code,nom)
VALUES
("C1","ANAS");

3-

SET SERVEROUTput on;
DECLARE
v_nom etude.nom%Type;
BEGIN
SELECT etude.nom
INTO v_nom
FROM etude
WHERE code="C1";
DBMS_output.put_line("le nom pour le code C1 est : " || v_nom);
END


DECLARE
t_etude etude%rowtype;
BEGIN
SELECT *
INTO t_etude
FROM etude
WHERE code='C1';
DBMS_output.put_line('C1 > Code: " || t_etude.code || ", nom : ' || t_etude.nom);
END;

