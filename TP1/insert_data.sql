-- 1. Insertion du Collège
INSERT INTO COLLEGE (id_college, site_internet) 
VALUES (1, 'www.college-republique.fr');

-- 2. Insertion des Salles
INSERT INTO SALLE (id_salle, nom_salle, nombre_places) VALUES 
(101, 'Amphi A', 150),
(102, 'Laboratoire Info', 30);

-- 3. Insertion des Matières
INSERT INTO MATIERE (id_matiere, nom_matiere, id_salle) VALUES 
(1, 'Mathématiques', 101),
(2, 'Informatique', 102);

-- 4. Insertion des Départements (responsable NULL pour l'instant)
INSERT INTO DEPARTEMENT (id_departement, nom_departement, id_college, id_enseignant_responsable) VALUES 
(10, 'Sciences', 1, NULL),
(20, 'Technologie', 1, NULL);

-- 5. Insertion des Enseignants
INSERT INTO ENSEIGNANT (id_enseignant, nom, prenom, tel, mail, date_prise_fonction, indice, id_departement, id_matiere) VALUES 
(1, 'Martin', 'Alice', '0601020304', 'amartin@college.fr', '2015-09-01', 520, 10, 1),
(2, 'Durand', 'Paul', '0605060708', 'pdurand@college.fr', '2018-09-01', 480, 10, 1),
(3, 'Leroy', 'Marc', '0609101112', 'mleroy@college.fr', '2020-09-01', 450, 20, 2);

-- 6. Mise à jour des responsables de Départements
UPDATE DEPARTEMENT SET id_enseignant_responsable = 1 WHERE id_departement = 10;
UPDATE DEPARTEMENT SET id_enseignant_responsable = 3 WHERE id_departement = 20;

-- 7. Insertion des Étudiants
INSERT INTO ETUDIANT (id_etudiant, nom, prenom, tel, mail, annee_entree) VALUES 
(1001, 'Dupont', 'Lucas', '0701020304', 'ldupont@etudiant.fr', 2024),
(1002, 'Bernard', 'Sophie', '0705060708', 'sbernard@etudiant.fr', 2024);

-- 8. Insertion des Notes
INSERT INTO NOTATION (id_etudiant, id_matiere, note) VALUES 
(1001, 1, 14.50),
(1001, 2, 16.00),
(1002, 1, 12.00),
(1002, 2, 18.50);