-- In the artist.sql file, write out the code for the following problems:

-- Add 3 new artists to the artist table. (It already exists.)

-- Select 10 artists in reverse alphabetical order.

-- Select 5 artists in alphabetical order.

-- Select all artists that start with the word ‘Black’.

-- Select all artists that contain the word ‘Black’.
create table artist (person_id serial primary key, name varchar(30));
/* #1 */
INSERT INTO artist ( name ) VALUES ( 'Bob Ross' ),
('Black Widow'),
('Black Mamba'),
('Pablo P'),
('Vincent Veh Gun'),
('Black Artist'),
('Terminal Artist'),
('Red Artist'),
('Yellow Artist'),
('Pink Artist'),
('Green Artist');

select * from artist order by name desc limit 10;
select * from artist order by name asc limit 5;
select * from artist where name like 'Black%';
select * from artist where name like '%Black%';




/* #2 */
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

/* #3 */
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

/* #4 */
SELECT * FROM artist WHERE name LIKE 'Black%';

/* #5 */
SELECT * FROM artist WHERE name LIKE '%Black%';