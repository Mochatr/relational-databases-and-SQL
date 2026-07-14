CREATE DATABASE IF NOT EXISTS systeme_bibliotheque;
USE systeme_bibliotheque;

CREATE TABLE EDITEUR (
    id_editeur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    adresse VARCHAR(255)
);

CREATE TABLE AUTEUR (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_naissance DATE
);

CREATE TABLE LECTEUR (
    id_lecteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    adresse VARCHAR(255)
);

CREATE TABLE LIVRE (
    ISBN VARCHAR(20) PRIMARY KEY,
    titre VARCHAR(200) NOT NULL,
    annee_publication INT,
    id_editeur INT,
    FOREIGN KEY (id_editeur) REFERENCES EDITEUR(id_editeur)
);

CREATE TABLE A_ECRIT (
    id_auteur INT,
    ISBN VARCHAR(20),
    PRIMARY KEY (id_auteur, ISBN),
    FOREIGN KEY (id_auteur) REFERENCES AUTEUR(id_auteur),
    FOREIGN KEY (ISBN) REFERENCES LIVRE(ISBN)
);

CREATE TABLE EMPRUNT (
    id_lecteur INT,
    ISBN VARCHAR(20),
    date_emprunt DATE,
    date_retour DATE, -- Vaut NULL si le livre n'est pas encore retourné
    PRIMARY KEY (id_lecteur, ISBN, date_emprunt),
    FOREIGN KEY (id_lecteur) REFERENCES LECTEUR(id_lecteur),
    FOREIGN KEY (ISBN) REFERENCES LIVRE(ISBN)
);