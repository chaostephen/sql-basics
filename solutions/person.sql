-- In the person.sql file, write out the code for the following problems:

-- Create a table called person that records a person’s id, name, age, height (in cm) , city, favorite_color. The id should be an auto-incrementing id/primary key (use type: SERIAL)
create table person (id serial primary key, name varchar(30) not null, age int not null, height, city, favorite_color) 
-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
insert into person (name, age, height, city, favorite_color) values ('Sandra', 31, 180, 'San Diego', 'Pink'),
('Sonny', 27, 172, 'San Francisco', 'Teal'),
('Theresa', 23, 164, 'Wilmington', 'Black'),
('Thomas', 28, 168, 'Savannah', 'Blue'),
('Uma', 18, 171, 'Princeton', 'Yellow');
-- Select all the people in the person table by height from tallest to shortest.
select * from person order by height desc;
-- Select all the people in the person table by height from shortest to tallest.
select * from person order by height asc;
-- Select all the people in the person table by age from oldest to youngest.
select * from person order by age desc;
-- Select all the people in the person table older than age 20.
select * from person where age > 20;
-- Select all the people in the person table that are exactly 18.
select * from person where age = 18;
-- Select all the people in the person table that are less than 20 and older than 30.
select * from person where age < 20 and age > 30;
-- Select all the people in the person table that are not 27 (use not equals).
select * from person where age != 27;
-- Select all the people in the person table where their favorite color is not red.
select * from person where favorite_color != 'Red';
-- Select all the people in the person table where their favorite color is not red and is not blue.
select * from person where favorite_color != 'Red' and favorite_color != 'Blue';
-- Select all the people in the person table where their favorite color is orange or green.
select * from person where favorite_color = 'Orange' or favorite_color = 'Green';
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
select * from person where favorite_color IN ('Orange', 'Green', 'Blue');
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
select * from person where favorite_color IN ('Yellow', 'Purple');
/* #1 */
CREATE TABLE person ( person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200));

/* #2 */
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'First Last', 21, 182, 'City', 'Color' );

/* #3 */
SELECT * FROM person ORDER BY height DESC;

/* #4 */
SELECT * FROM person ORDER BY height ASC;

/* #5 */
SELECT * FROM person ORDER BY age DESC;

/* #6 */
SELECT * FROM person WHERE age > 20;

/* #7 */
SELECT * FROM person WHERE age = 18;

/* #8 */
SELECT * FROM person WHERE age < 20 OR age > 30;

/* #9 */
SELECT * FROM person WHERE age != 27;

/* #10 */
SELECT * FROM person WHERE favorite_color != 'red';

/* #11 */
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

/* #12 */
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

/* #13 */
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );

/* #14 */
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )