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
