.www SELECT title FROM Movie AS M, Studio AS S 
WHERE M.studioID = S.studioID 
    AND S.name = 'MGM Studios' 
    AND M.year > 1990 
    AND M.length > 90 
ORDER BY M.length DESC;

.www SELECT title, length FROM Movie
ORDER BY length ASC;

.www SELECT name FROM Actor
WHERE gender = 'F'
ORDER BY name DESC;

.www SELECT S.name FROM Studio AS S, Movie AS M
WHERE S.studioID = M.studioID 
    AND M.name LIKE 'Star Wars%'
ORDER BY S.name DESC; 

