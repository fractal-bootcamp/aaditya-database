INSERT INTO "Author" (name, biography) 
VALUES ('George Orwell', 'George Orwell was an English novelist, essayist, journalist and critic.');

INSERT INTO "Member" (name, email, address) 
VALUES ('John Doe', 'john.doe+1@example.com', '123 Fictional St, Imaginary City');

INSERT INTO "Genre" (name) 
VALUES ('Dystopian');

INSERT INTO "Rental" ("bookId", "memberId", "borrowedAt")
VALUES ((SELECT id FROM "Book" LIMIT 1), (SELECT id from "Member" LIMIT 1), NOW());

INSERT INTO "Book" (title, isbn, "authorId") 
VALUES ('1984', '978-0451524934', 1);






