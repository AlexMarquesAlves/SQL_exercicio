#Exercício proposto no Webinar da Ebac

//Criando tabelas...

## desenho das tabelas... https://drawsql.app/alex-21/diagrams/ex1

create table cliente (
nome text not null PRIMARY KEY,  
 email text not null,  
 idade INt NOT NULL,  
 autorPreferido text,
generoPreferido text
);
create table livros (
isbn int not null PRIMARY KEY,
nome text not null,
autor text not null,  
 editora text NOT NULL,  
 genero text NOT NULL  
);

---

//inserindo nas tabelas...

INSERT INTO cliente (nome, email, idade, autorpreferido, generopreferido)
VALUES ('Maria','maria@email.com', 25, 'J. K. Rowling', 'Fantasia');
INSERT INTO cliente (nome, email, idade, autorpreferido, generopreferido)
VALUES ('Lucas','lucas@email.com', 40, 'J. R. R. Tolkien', 'Aventura');
INSERT INTO cliente (nome, email, idade, autorpreferido, generopreferido)
VALUES ('Rosa', 'rosa@email.com', 32, 'Kiera Cass', 'Ficção');
INSERT INTO cliente (nome, email, idade, autorpreferido, generopreferido)
VALUES ('Antonio', 'antonio@email.com', 57, 'Arthur Conan Doyle', 'Misterio');

---

INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8532530788, 'Harry Potter e a pedra filosofal', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8532530796, 'Harry Potter e a Câmara Secreta', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES ('853253080X', 'Harry Potter e o prisioneiro de Azkaban', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8532530818, 'Harry Potter e o cálice de fogo', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8532530826, 'Harry Potter e a ordem da fênix', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8532530834, 'Harry Potter e o enigma do príncipe', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8532530842, 'Harry Potter e as relíquias da morte', 'J. K. Rowling', 'Rocco','Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8565765016, 'A Seleção', 'Kiera Cass', 'Seguinte','Ficção, Romance');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8565765121, 'A Elite', 'Kiera Cass', 'Seguinte','Ficção, Romance');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8565765377, 'A Escolha', 'Kiera Cass', 'Seguinte','Ficção, Romance');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8595084750, 'O Senhor dos Anéis: A Sociedade do Anel', 'J. R. R. Tolkien', 'HarperCollins','Ficção, Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8595084769, 'O Senhor dos Anéis: As duas torres', 'J. R. R. Tolkien', 'HarperCollins','Ficção, Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8595084777, 'O Senhor dos Anéis: O retorno do rei', 'J. R. R. Tolkien', 'HarperCollins','Ficção, Fantasia');
INSERT INTO livros(isbn, nome, autor, editora, genero)
VALUES (8595080836, 'Sherlock Holmes Obra Completa', 'Arthur Conan Doyle', 'HarperCollins','Misterio');

---

//Relacionando as tabelas...

1. Pode-se relacionar com genero e autores preferidos...

2. Quais clientes gostam de n livros e(ou) autores...
   > > SELECT \* FROM cliente,livros WHERE cliente.generopreferido=livros.genero;
