use codeup_test_db;
select 'albums released after 1991, convert to delete afterwards' as '';
select album_name from albums where release_date > 1991;
delete from albums where release_date > 1991;

select 'albums with disco genre, convert to delete afterwards' as '';
select album_name from albums where genre = 'disco';
delete from albums where genre = 'disco';

select 'albums by Whitney Houston(or change it to someone else), convert to delete afterwards' as '';
select album_name from albums where artist_name = 'Whitney Houston';
delete from albums where artist_name = 'Whitney Houston';