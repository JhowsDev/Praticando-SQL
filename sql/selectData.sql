SELECT * FROM books;

SELECT books."name",
books."pages",
categories."name" AS "categorie"
FROM books
INNER JOIN books_categories ON books."id" = books_categories."bookId"
INNER JOIN categories ON categories."id" = books_categories."categoryId"
WHERE categories."id" = 3;

SELECT books."name" AS "bookName",
books."pages" AS "bookPages",
categories."name" AS "categorie"
FROM books
INNER JOIN books_categories ON books."id" = books_categories."bookId"
INNER JOIN categories ON categories."id" = books_categories."categoryId";

SELECT books."name" AS "bookName",
books."pages",
authors."name" AS "authorName",
authors."bio" AS "authorBio"
FROM books
INNER JOIN authors ON authors."id" = books."id"
WHERE books."id" = 1;