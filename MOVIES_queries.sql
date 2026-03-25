/* 
    Jake Muzyka
    Amogh Dalal
*/

.www SELECT title FROM Movie AS M, Studio AS S 
WHERE M.studioID = S.studioID 
    AND S.name = 'MGM Studios' 
    AND M.year > 1990 
    AND M.length > 90 
ORDER BY M.length DESC;

.www SELECT title FROM Movie
ORDER BY length ASC;

.www SELECT name FROM Actor
WHERE gender = 'F'
ORDER BY name ASC;

.www SELECT DISTINCT S.name FROM Studio AS S, Movie AS M
WHERE S.studioID = M.studioID 
    AND M.title LIKE 'Star Wars%'
ORDER BY S.name ASC;

.www SELECT title, STD.name, rating
FROM Actor AS A, StarsIn AS S, Movie AS M, Studio AS STD
WHERE  
	A.name = 'Leonardo DiCaprio' AND
	S.personID = A.personID AND
	S.movieID = M.movieID AND
	STD.studioID = M.studioID
ORDER BY year;
	
.www SELECT S.name, SUM(M.length) AS total_length 
FROM Movie AS M, Studio AS S
WHERE S.studioID = M.studioID
GROUP BY S.studioID
ORDER BY total_length DESC;

.www SELECT S.name
FROM STUDIO AS S
WHERE S.city = 'Los Angeles'
ORDER BY S.name ASC;

.www SELECT A.name, AVG(rating) as avg_rating
FROM Actor AS A, StarsIn AS S, Movie AS M
WHERE A.personID = S.personID AND
	S.movieID = M.movieID
GROUP BY A.name
ORDER BY avg_rating DESC;
	
