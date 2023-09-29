CREATE TABLE IF NOT EXISTS abonne
(
    id_abonne INTEGER PRIMARY KEY AUTOINCREMENT,
    prenom_abonne VARCHAR(20) NOT NULL
);

INSERT INTO abonne (prenom_abonne) VALUES
('Guillaume'),
('Chloe'),
('Benoit'),
('Laura');

CREATE TABLE IF NOT EXISTS livre
(
    id_livre INTEGER PRIMARY KEY,
    auteur_livre VARCHAR(30) NOT NULL,
    titre_livre VARCHAR(30) NOT NULL
);

INSERT INTO livre (id_livre,auteur_livre,titre_livre) VALUES
(100,'Guy de Maupassant','Une vie'),
(101,'Guy de Maupassant','Bel-Ami'),
(102,'Honoré de Balzac','Le Pere Goriot'),
(103,'Alphonse Daudet','Le petit chose'),
(104,'Alexandre Dumas','La reine Margot'),
(105,'Alexandre Dumas','Les Trois Mousquetaires');

CREATE TABLE IF NOT EXISTS emprunt
(
    id_emprunt INTEGER PRIMARY KEY AUTOINCREMENT,
    id_livre INTEGER DEFAULT NULL,
    id_abonne INTEGER DEFAULT NULL,
    date_sortie DATE NOT NULL,
    date_rendu DATE DEFAULT NULL
);

INSERT INTO emprunt (id_livre,id_abonne,date_sortie,date_rendu) VALUES
(100,1,'2011-12-17','2011-12-18'),
(101,2,'2011-12-18','2011-12-20'),
(100,3,'2011-12-19','2011-12-22'),
(103,4,'2011-12-19','2011-12-22'),
(104,1,'2011-12-19','2011-12-28'),
(105,2,'2011-12-20','2012-12-26'),
(105,3,'2013-06-06',''),
(100,2,'2013-06-15','');