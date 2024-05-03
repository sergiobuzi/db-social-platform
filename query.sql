-- 1. Seleziona tutti gli utenti e calcolane l'età (25)
SELECT username, TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) AS eta 
FROM users;




-- 2. Seleziona tutti i post senza Like (13)
SELECT * 
FROM posts 
WHERE (SELECT count(post_id) FROM likes where likes.post_id = posts.id) = 0;





-- 3. Conta il numero di like per ogni post (165)





-- 4. Ordina gli utenti per il numero di media caricati (25)





-- 5. Ordina gli utenti per totale di likes ricevuti nei loro posts (25)





-- 6. Seleziona tutti i post degli utenti tra i 20 e i 30 anni (49)





-- 7. Seleziona il numero di post e di media per ogni utente (25)