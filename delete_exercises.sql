USE codeup_test_db;

SELECT 'Albums released after 1991';
-- SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM  albums WHERE release_date > 1991;

SELECT 'Albums with the genre "disco"';
-- SELECT * FROM  albums WHERE genre = 'disco';
DELETE FROM albums WHERE id = 8;

SELECT 'Albums by "Whitney Houston" (...or maybe an artist of your choice)';
-- SELECT * FROM albums WHERE artist = 'Pink Floyd';
DELETE FROM albums WHERE id = 30;


-- mysql -u codeup_test_user -p < delete_exercises.sql