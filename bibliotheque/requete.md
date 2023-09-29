- Quels sont les livres que l'abonné id_abonne 2 est venu chercher à quelle date ?

SELECT date_sortie FROM emprunt WHERE id_abonne = 2;





- Combien d'emprunt ont été effectué en tout ?

SELECT count(*) FROM emprunt;





- Combien de livre sont sortis le 2011-12-19 ?

SELECT count(*) FROM emprunt WHERE date_sortie = '2011-12-19';

        (MON BONUS ) Ecrire leurs noms : 
                        SELECT titre_livre FROM emprunt INNER JOIN livre ON livre.id_livre = emprunt.id_livre WHERE date_sortie = '2011-12-19';





- Quel est l'auteur du livre "une vie" ?

SELECT auteur_livre FROM livre WHERE titre_livre = 'Une vie';





- Quel id_livre est le plus emprunté?

SELECT id_livre, count(id_livre) as nombre_livre FROM emprunt GROUP BY id_livre;

        Version triée par le nombre décroissant :
                    SELECT id_livre, count(id_livre) as nombre_livre FROM emprunt GROUP BY id_livre ORDER BY nombre_livre DESC; 
