# Modèle Conceptuel de Données (MCD)

Voici la définition des entités et de leurs attributs selon l'énoncé :

- LIVRE : ISBN, Titre, Année de publication.  
- AUTEUR : id_auteur, Nom, Prénom, Date de naissance.  
- EDITEUR : id_editeur, Nom, Adresse.  
- LECTEUR : id_lecteur, Nom, Prénom, Adresse.  

Voici les associations et cardinalités déduites des règles de gestion :
- ECRIT (AUTEUR 1,n --- 1,n LIVRE) : Un auteur peut écrire un ou plusieurs livres. Un livre est écrit par un ou plusieurs auteurs.  
- PUBLIE (EDITEUR 0,n --- 1,1 LIVRE) : Un éditeur peut avoir plusieurs livres à son actif. Un livre est édité par un éditeur.  
- EMPRUNTE (LECTEUR 0,n --- 0,n LIVRE) : Un lecteur peut emprunter un ou plusieurs livres. Un livre peut être emprunté par un ou plusieurs lecteurs. Cette association porte les propriétés : Date d'emprunt, Date de retour.