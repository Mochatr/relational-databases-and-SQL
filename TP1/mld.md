# Modèle Logique de Données (MLD)

Pour passer au MLD, les associations 1,n / 1,1 se traduisent par des clés étrangères (précédées d'un #). L'association 0,n / 0,n (EVALUE) devient une table de jointure.

- COLLEGE (id_college, site_internet)
- SALLE (id_salle, nom_salle, nombre_places)
- MATIERE (id_matiere, nom_matiere, #id_salle)
- DEPARTEMENT (id_departement, nom_departement, #id_college, #id_enseignant_responsable)
- ENSEIGNANT (id_enseignant, nom, prenom, tel, mail, date_prise_fonction, indice, #id_departement, #id_matiere)
- ETUDIANT (id_etudiant, nom, prenom, tel, mail, annee_entree)
- NOTATION (#id_etudiant, #id_matiere, note)