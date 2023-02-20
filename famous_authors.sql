/* Create table about the people and what they do here */

--Table for famous authors and the books they wrote

CREATE TABLE famous_authors (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, series_name TEXT, birth_decade INTEGER, combo_id INTEGER);

INSERT INTO famous_authors(name, series_name, birth_decade, combo_id) 
VALUES 
    ("Robert Jordan", "The Wheel of Time", "1940",1),
    ("Brandon Sanderson", "The Cosmere", "1970",1),
    ("George R.R. Martin", "A Song of Ice and Fire", "1940",2),
    ("Robin Hobb", "The Farseer Trilogy", "1950",2),
    ("J.R.R. Tolkien", "The Lord of the Rings", "1890",3),
    ("Joeseph Abercrombie", "The First Law", "1970",4),
    ("Terry Pratchett", "Discworld", "1948",6),
    ("Orson Scott Card","Ender's Game","1950",5),
    ("Isaac Asimov", "The Foundation", "1920",5);
    
--Now let's make a table of these author's unique combination of genre and country of birth to distinguish them

CREATE TABLE author_info (id INTEGER PRIMARY KEY AUTOINCREMENT, genre TEXT, country TEXT);

INSERT INTO author_info(genre, country)
VALUES
    ("High Fantasy",  "U.S.A."),
    ("Low Fantasy",  "U.S.A."),
    ("High Fantasy",  "England"),
    ("Low Fantasy", "England"),
    ("Science Fiction", "U.S.A."),
    ("Science Fiction", "England");
    
SELECT * FROM famous_authors;

SELECT * FROM author_info;


--Now let's create a relationship between these two tables! Let's make a table linking the author's name to unique their genre and country combo_id

SELECT name, genre, country
FROM famous_authors, author_info
WHERE famous_authors.combo_id = author_info.id;






    
    
    
    

