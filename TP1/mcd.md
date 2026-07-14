# Modèle Conceptuel de Données (MCD)

Basé sur les règles de gestion de l'énoncé, voici les entités et leurs associations :

## Entités et leurs attributs :

COLLEGE : id_college, site_internet

DEPARTEMENT : id_departement, nom_departement

ENSEIGNANT : id_enseignant, nom, prenom, tel, mail, date_prise_fonction, indice

ETUDIANT : id_etudiant, nom, prenom, tel, mail, annee_entree

MATIERE : id_matiere, nom_matiere

SALLE : id_salle, nom_salle, nombre_places

## Associations et cardinalités :

POSSEDE (COLLEGE 1,n --- 1,1 DEPARTEMENT) : Un collège possède un ou plusieurs départements. Un département appartient à un seul collège.

APPARTIENT (DEPARTEMENT 1,n --- 1,1 ENSEIGNANT) : Un département regroupe plusieurs enseignants. Un enseignant appartient à un seul département.

DIRIGE (DEPARTEMENT 1,1 --- 0,1 ENSEIGNANT) : Un département est dirigé par un seul enseignant (le responsable). Un enseignant peut diriger zéro ou un département.

DISPENSE (ENSEIGNANT 1,1 --- 1,n MATIERE) : Un enseignant dispense une et une seule matière. Une matière peut être enseignée par plusieurs enseignants.

A_LIEU (MATIERE 1,1 --- 0,n SALLE) : Une matière a toujours lieu dans une seule et même salle. Une salle peut accueillir plusieurs matières.

EVALUE (ETUDIANT 0,n --- 0,n MATIERE) : Un étudiant suit plusieurs matières et reçoit une note (propriété de l'association). Une matière est suivie par plusieurs étudiants.

Associations et cardinalités :

POSSEDE (COLLEGE 1,n --- 1,1 DEPARTEMENT) : Un collège possède un ou plusieurs départements. Un département appartient à un seul collège.

APPARTIENT (DEPARTEMENT 1,n --- 1,1 ENSEIGNANT) : Un département regroupe plusieurs enseignants. Un enseignant appartient à un seul département.

DIRIGE (DEPARTEMENT 1,1 --- 0,1 ENSEIGNANT) : Un département est dirigé par un seul enseignant (le responsable). Un enseignant peut diriger zéro ou un département.

DISPENSE (ENSEIGNANT 1,1 --- 1,n MATIERE) : Un enseignant dispense une et une seule matière. Une matière peut être enseignée par plusieurs enseignants.

A_LIEU (MATIERE 1,1 --- 0,n SALLE) : Une matière a toujours lieu dans une seule et même salle. Une salle peut accueillir plusieurs matières.

EVALUE (ETUDIANT 0,n --- 0,n MATIERE) : Un étudiant suit plusieurs matières et reçoit une note (propriété de l'association). Une matière est suivie par plusieurs étudiants.