SELECT L.* 
FROM LIVRE L
JOIN EMPRUNT E ON L.ISBN = E.ISBN
WHERE E.id_lecteur = 1;

SELECT * 
FROM LIVRE 
WHERE ISBN NOT IN (
    SELECT ISBN 
    FROM EMPRUNT 
    WHERE date_emprunt <= '2026-07-14' 
    AND (date_retour IS NULL OR date_retour > '2026-07-14')
);

SELECT DISTINCT Lec.* 
FROM LECTEUR Lec
JOIN EMPRUNT E ON Lec.id_lecteur = E.id_lecteur
WHERE E.date_retour IS NULL 
AND DATEDIFF(CURRENT_DATE, E.date_emprunt) > 14;

SELECT E.date_emprunt, L.titre, L.ISBN, Lec.nom AS nom_lecteur, Lec.prenom AS prenom_lecteur
FROM EMPRUNT E
JOIN LIVRE L ON E.ISBN = L.ISBN
JOIN LECTEUR Lec ON E.id_lecteur = Lec.id_lecteur
WHERE E.date_retour IS NULL;

SELECT * 
FROM AUTEUR 
WHERE id_auteur NOT IN (
    SELECT AE.id_auteur 
    FROM A_ECRIT AE
    JOIN EMPRUNT E ON AE.ISBN = E.ISBN
);

SELECT L.titre, E.date_emprunt,
       CASE 
           WHEN E.date_retour IS NULL THEN 'Emprunté'
           ELSE 'Retourné' 
       END AS statut
FROM EMPRUNT E
JOIN LIVRE L ON E.ISBN = L.ISBN;