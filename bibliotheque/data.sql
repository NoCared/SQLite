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