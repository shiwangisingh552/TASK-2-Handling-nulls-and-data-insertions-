Create Book table:

  CREATE TABLE Books (
      BookID INT PRIMARY KEY,              -- Unique ID for each book
      Title VARCHAR(255),
      Author VARCHAR(255),
      Publisher VARCHAR(255),
      YearPublished INT,
      Genre VARCHAR(100),
      ISBN VARCHAR(20),
      QuantityAvailable INT
  );

INSERT Statements (Handling Nulls and Defaults)

  * Insert complete book data:
      INSERT INTO Books (BookID, Title, Author, Publisher, YearPublished, Genre, ISBN, QuantityAvailable)
      VALUES (1, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960, 'Fiction', '9780061120084', 5);

  * Insert with missing Publisher:
      INSERT INTO Books (BookID, Title, Author, Publisher, YearPublished, Genre, ISBN, QuantityAvailable)
      VALUES (2, '1984', 'George Orwell', NULL, 1949, 'Dystopian', '9780451524935', 3);

  * Insert with missing QuantityAvailable:
      INSERT INTO Books (BookID, Title, Author, Publisher, YearPublished, Genre, ISBN, QuantityAvailable)
      VALUES (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 1925, 'Classic', '9780743273565', NULL);

  * Insert with only Title and Author (others as NULL):
      INSERT INTO Books (BookID, Title, Author, Publisher, YearPublished, Genre, ISBN, QuantityAvailable)
      VALUES (4, 'Invisible Man', 'Ralph Ellison', NULL, NULL, NULL, NULL, NULL);

  * Insert with all fields NULL except BookID:
      INSERT INTO Books (BookID, Title, Author, Publisher, YearPublished, Genre, ISBN, QuantityAvailable)
      VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


UPDATE Statements (Cleaning and Completing Data)

  * Update missing Publisher for book ID 2:
      UPDATE Books
      SET Publisher = 'Secker & Warburg'
      WHERE BookID = 2;

  * Update QuantityAvailable for book ID 3:
      UPDATE Books
      SET QuantityAvailable = 7
      WHERE BookID = 3;

  * Update full details for book ID 5:
      UPDATE Books
      SET Title = 'Pride and Prejudice',
          Author = 'Jane Austen',
          Publisher = 'T. Egerton',
          YearPublished = 1813,
          Genre = 'Romance',
          ISBN = '9780141439518',
          QuantityAvailable = 4
      WHERE BookID = 5;


DELETE Statements (Removing Inconsistent or Unwanted Data)

  * Delete book with completely missing data (except ID):
      DELETE FROM Books
      WHERE Title IS NULL AND Author IS NULL AND Publisher IS NULL AND YearPublished IS NULL
      AND Genre IS NULL AND ISBN IS NULL AND QuantityAvailable IS NULL;

  * Delete books published before 1900 (example condition):
      DELETE FROM Books
      WHERE YearPublished < 1900;
