-- Création des tables indépendantes en premier
CREATE TABLE COLLEGE (
    id_college INT PRIMARY KEY,
    site_internet VARCHAR(255)
);

CREATE TABLE SALLE (
    id_salle INT PRIMARY KEY,
    nom_salle VARCHAR(50),
    nombre_places INT
);

CREATE TABLE MATIERE (
    id_matiere INT PRIMARY KEY,
    nom_matiere VARCHAR(100),
    id_salle INT,
    FOREIGN KEY (id_salle) REFERENCES SALLE(id_salle)
);

-- Création de la table DEPARTEMENT (sans la contrainte du responsable dans un premier temps)
CREATE TABLE DEPARTEMENT (
    id_departement INT PRIMARY KEY,
    nom_departement VARCHAR(100),
    id_college INT,
    id_enseignant_responsable INT,
    FOREIGN KEY (id_college) REFERENCES COLLEGE(id_college)
);

CREATE TABLE ENSEIGNANT (
    id_enseignant INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    tel VARCHAR(20),
    mail VARCHAR(100),
    date_prise_fonction DATE,
    indice INT,
    id_departement INT,
    id_matiere INT,
    FOREIGN KEY (id_departement) REFERENCES DEPARTEMENT(id_departement),
    FOREIGN KEY (id_matiere) REFERENCES MATIERE(id_matiere)
);

-- Ajout de la clé étrangère pour le responsable du département
ALTER TABLE DEPARTEMENT
ADD CONSTRAINT fk_responsable 
FOREIGN KEY (id_enseignant_responsable) REFERENCES ENSEIGNANT(id_enseignant);

CREATE TABLE ETUDIANT (
    id_etudiant INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    tel VARCHAR(20),
    mail VARCHAR(100),
    annee_entree INT
);

CREATE TABLE NOTATION (
    id_etudiant INT,
    id_matiere INT,
    note DECIMAL(5,2),
    PRIMARY KEY (id_etudiant, id_matiere),
    FOREIGN KEY (id_etudiant) REFERENCES ETUDIANT(id_etudiant),
    FOREIGN KEY (id_matiere) REFERENCES MATIERE(id_matiere)
);