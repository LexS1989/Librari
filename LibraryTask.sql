CREATE TABLE author
(
    id   SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE book
(
    id        SERIAL PRIMARY KEY,
    name      TEXT,
    author_id INTEGER REFERENCES author (id)
);

SELECT author.name, book.name
FROM author
         INNER JOIN book ON author.id = book.author_id
WHERE author.name = 'Борис Акунин'