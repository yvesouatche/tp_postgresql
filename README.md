# tp_postgresql

l'objectif de ce projet pratique est de savoir si les apprenants ont bien acquis le SGBD postgresql;

le nom de ma base est : institut_db;

j'ai trois tables respectives:etudiants,matieres,evalutions.

l'importation des données est faite au format csv(comma separated value)

la base de données a été exporté sous le nom de institut_bd.sql

voici mes trois requetes de joiunture:

SELECT  etudiants.*, evaluations.* 
FROM evaluations 
RIGHT JOIN evaluations 
ON evaluations.id_etudiant = etudiants.id_etudiant ;

select * from etudiants,matieres,evaluations
where etudiants.id_etudiant=evaluations.id_etudiant
and matieres.id_matiere=evaluations.id_matiere;

select etudiants.nom,matieres.coeff_matiere,evaluations.note from etudiants,matieres,evaluations
where etudiants.id_etudiant=evaluations.id_etudiant
and matieres.id_matiere=evaluations.id_matiere;
