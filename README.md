# Simple Library System

# Description
This Dart program simulates a simple library system to manage books and users. The program supports adding books and users, borrowing and returning books, and displaying the library's current state.


# Features

Class: Book
- Attributes:
  - id: Unique identifier for the book.
  - title: Title of the book.
  - borrowed: Boolean indicating if the book is borrowed.
- Method:
  - displayInfo(): Displays book details.

Class: User
- Attributes:
  - id: Unique identifier for the user.
  - name: Name of the user.
- Method:
  - displayInfo(): Displays user details.

Class: Library
- Attributes:
  - books: List of books in the library.
  - users: List of users in the library.
- Methods:
  - addBook(Book book): Adds a book to the library.
  - addUser(User user): Adds a user to the library.
  - borrowBook(String bookTitle, String userName): Allows a user to borrow a book.
  - returnBook(String bookTitle): Allows a user to return a book.
  - displayInfo(): Displays all books and users in the library.