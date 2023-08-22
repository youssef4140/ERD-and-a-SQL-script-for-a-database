CREATE TABLE Address (
  address_id INT PRIMARY KEY,
  street VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  postal_code VARCHAR(255)
);

CREATE TABLE Library (
  library_id INT PRIMARY KEY,
  name VARCHAR(255),
  address_id INT,
  FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

CREATE TABLE Author (
  author_id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE Book (
  book_id INT PRIMARY KEY,
  title VARCHAR(255),
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE BookLibrary (
  book_id INT,
  library_id INT,
  FOREIGN KEY (book_id) REFERENCES Book(book_id),
  FOREIGN KEY (library_id) REFERENCES Library(library_id),
  PRIMARY KEY (book_id, library_id)
);