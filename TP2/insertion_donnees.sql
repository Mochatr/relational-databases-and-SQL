INSERT INTO EDITEUR (nom, adresse) VALUES 
('Dunod', '11 Rue Paul Bert, Malakoff'),
('Eyrolles', '1 Boulevard Saint-Germain, Paris');

INSERT INTO AUTEUR (nom, prenom, date_naissance) VALUES 
('Tardieu', 'Hugo', '1980-05-14'),
('Martin', 'Robert', '1952-12-05'),
('Lefebvre', 'Marie', '1990-08-22');

INSERT INTO LECTEUR (nom, prenom, adresse) VALUES 
('Dubois', 'Jean', '10 Rue de la Paix'),
('Roux', 'Sophie', '5 Avenue des Champs');

INSERT INTO LIVRE (ISBN, titre, annee_publication, id_editeur) VALUES 
('978-2100801121', 'Maîtriser SQL', 2021, 1),
('978-2212112815', 'Clean Code', 2008, 2),
('978-2100123456', 'Introduction au Machine Learning', 2023, 1);

INSERT INTO A_ECRIT (id_auteur, ISBN) VALUES 
(1, '978-2100801121'),
(2, '978-2212112815'),
(3, '978-2100123456');

-- Emprunt 1: Retourné
-- Emprunt 2: En cours
-- Emprunt 3: En retard (emprunté il y a plus de 14 jours, non retourné)
INSERT INTO EMPRUNT (id_lecteur, ISBN, date_emprunt, date_retour) VALUES 
(1, '978-2100801121', '2026-06-01', '2026-06-10'),
(2, '978-2212112815', '2026-07-10', NULL), 
(1, '978-2100123456', '2026-06-15', NULL);