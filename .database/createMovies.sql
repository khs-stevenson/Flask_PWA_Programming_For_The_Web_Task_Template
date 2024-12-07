/*DROP table movies;

CREATE TABLE movies(ID INTEGER NOT NULL PRIMARY KEY,name TEXT NOT NULL, year_released INTEGER NOT NULL, rating TEXT, image TEXT, imdb TEXT);
INSERT INTO movies(ID, name, year_released, rating, image, imdb) VALUES (1, "Monsters, Inc.", 2001, "G", "https://goldendiscs.ie/cdn/shop/products/MM00082529_460x@2x.jpg?v=1690668856","https://www.imdb.com/title/tt0198781/");
INSERT INTO movies(ID, name, year_released, rating, image, imdb) VALUES (2, "The Sound of Music", 1965, "G", "https://goldendiscs.ie/cdn/shop/products/91TjgeOMsoS._AC_SL1500_900x@2x.jpg?v=1690773254","https://www.imdb.com/title/tt0059742/?ref_=fn_al_tt_1");
INSERT INTO movies(ID, name, year_released, rating, image, imdb) VALUES (3, "Skyfall", 2012, "M", "https://m.media-amazon.com/images/M/MV5BNjAzMWNkODUtM2FlMi00NzgyLWJhMGUtMWEyNDYyZGFiN2RlXkEyXkFqcGc@._V1_QL75_UX190_CR0,0,190,281_.jpg", "https://www.imdb.com/title/tt1074638/?ref_=fn_al_tt_2");
INSERT INTO movies(ID, name, year_released, rating, image, imdb) VALUES (4, "Inside Out", 2015, "PG", "https://lumiere-a.akamaihd.net/v1/images/h_insideout_mobile_19751_befd1504.jpeg","https://www.imdb.com/title/tt2096673/");
*/
--DROP table contact_list;
CREATE TABLE contact_list(id INTEGER PRIMARY KEY AUTOINCREMENT, 
            email TEXT NOT NULL UNIQUE,
            name TEXT);