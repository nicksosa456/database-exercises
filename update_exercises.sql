USE codeup_test_db;
select 'all albums' as '';
select album_name from albums;
select 'make sales increase times 10' as '';
update albums set record_sales = record_sales*10;
select record_sales from albums;

select 'all albums released before 1980' as '';
select album_name from albums where release_date < 1980;
select 'move released before 1980 to 1800s' as '';
update albums set release_date = release_date-1000 where release_date < 1980;
select album_name from albums where release_date < 1980;

select 'all albums by Michael Jackson' as '';
select album_name from albums where artist_name = 'Michael Jackson';
select 'change Michael Jackson to Peter Jackson' as '';
update albums set artist_name = 'Peter Jackson' where artist_name = 'Michael Jackson';
select album_name from albums where artist_name = 'Peter Jackson';