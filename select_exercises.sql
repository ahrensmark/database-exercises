USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS '';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as "";
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' as "";
SELECT genre From albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' as "";
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' as"";
SELECT * FROM albums Where sales < 20;

SELECT 'the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?' as"";
SELECT * FROM albums WHERE genre = 'Rock';


-- mysql -u codeup_test_user -p -t < select_exercises.sql