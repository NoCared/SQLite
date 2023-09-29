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
    id_livre INTEGER PRIMARY KEY AUTOINCREMENT,
    auteur_livre VARCHAR(30) NOT NULL,
    titre_livre VARCHAR(30) NOT NULL
);