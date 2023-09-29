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





- Quel id_abonne empreinte le plus de livre ?

SELECT id_abonne  FROM emprunt GROUP BY id_abonne ORDER BY count(id_abonne)  DESC LIMIT 1;  

                Avec le nom et le nombre de livre :
                        SELECT prenom_abonne, count(emprunt.id_abonne) as nombre_livres_empruntes FROM emprunt INNER JOIN abonne ON abonne.id_abonne = emprunt.id_abonne GROUP BY emprunt.id_abonne ORDER BY count(emprunt.id_abonne) DESC LIMIT 1; 






Autre façon pour les requetes imbriquées mais moins rapide : 
SELECT titre_livre FROM livre WHERE id_livre IN (SELECT id_livre FROM emprunt WHERE date_rendu IS NULL);
Ici sélectionne les livres non rendus et affiche leurs noms






- Afficher le nombre de livre que Benoit a emprunté :

SELECT prenom_abonne, count(emprunt.id_abonne) as nombre_livres_empruntes FROM abonne INNER JOIN emprunt ON emprunt.id_abonne = abonne.id_abonne WHERE prenom_abonne = 'Benoit';


- Afficher le numéro de livre que Benoit a le plus emprunté :
SELECT id_livre FROM emprunt WHERE id_abonne IN (SELECT id_abonne FROM abonne WHERE prenom_abonne like 'Benoit');





- Afficher le titre des livres que Benoit à emprunté :

SELECT titre_livre FROM abonne INNER JOIN emprunt ON abonne.id_abonne = emprunt.id_abonne INNER JOIN livre ON livre.id_livre = emprunt.id_livre WHERE abonne.prenom_abonne LIKE 'Benoit'; 


