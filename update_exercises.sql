USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums SET sales * 10;

SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;


SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'

-- mysql -u codeup_test_user -p < update_exercises.sql