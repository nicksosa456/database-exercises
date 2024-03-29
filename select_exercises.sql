USE codeup_test_db;
select 'all albums by Pink Floyd' as '';
select album_name from albums where artist_name = 'Pink Floyd';
select 'release year for Sgt. Pepper''s Lonely Hearts Club' as '';
select release_date from albums where album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
select 'genre for Nevermind album' as '';
select genre from albums where album_name = 'Nevermind';
select 'albums released in the 1990s' as '';
select album_name from albums where release_date between 1990 and 1999;
select 'albums with less than 20 million certified sales' as '';
select album_name from albums where record_sales < 20.0;
select 'albums with rock genre' as '';
select album_name from albums where genre = 'rock';