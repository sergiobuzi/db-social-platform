-- 1. Seleziona tutti gli utenti e calcolane l'età (25)
SELECT username, TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) AS eta 
FROM users;




-- 2. Seleziona tutti i post senza Like (13)
SELECT * 
FROM likes 
RIGHT JOIN posts 
ON likes.post_id=posts.id 
WHERE likes.post_id IS null;



-- 3. Conta il numero di like per ogni post (165)
SELECT post_id, COUNT(*) AS num_likes
FROM likes
GROUP BY post_id;




-- 4. Ordina gli utenti per il numero di media caricati (25)
SELECT user_id, COUNT(*) AS num_posts
FROM posts
GROUP BY user_id
ORDER BY num_posts;




-- 5. Ordina gli utenti per totale di likes ricevuti nei loro posts (25)





-- 6. Seleziona tutti i post degli utenti tra i 20 e i 30 anni (49)
SELECT posts.*
FROM posts
JOIN users ON posts.user_id = users.id
WHERE YEAR(CURDATE()) - YEAR(users.birthdate) BETWEEN 20 AND 30;




-- 7. Seleziona il numero di post e di media per ogni utente (25)