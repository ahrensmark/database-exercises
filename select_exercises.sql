USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS 'Info';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind';
SELECT genre From albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales';
SELECT * FROM albums Where sales < 20;

SELECT 'the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?';
SELECT * FROM albums WHERE genre = 'Rock';


-- mysql -u codeup_test_user -p < select_exercises.sql