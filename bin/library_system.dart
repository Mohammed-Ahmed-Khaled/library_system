class Book {
  int id;
  String title;
  bool borrowed;

  Book({
    required this.id,
    required this.title,
    this.borrowed = false,
  });

  void displayInfo() {
    print("Book ID: $id, Title: $title, Borrowed: $borrowed");
  }
}

class User {
  int id;
  String name;

  User({
    required this.id,
    required this.name,
  });

  void displayInfo() {
    print("User ID: $id, Name: $name");
  }
}

class Library {
  List<Book> books = [];
  List<User> users = [];

  void addBook(Book book) {
    books.add(book);
    print("Added Book: ${book.title}");
  }

  void addUser(User user) {
    users.add(user);
    print("Added User: ${user.name}");
  }

  void borrowBook(String bookTitle, String userName) {
    if (!books.any((book) => book.title == bookTitle)) {
      print("\n$bookTitle is not available in the library.");
      return;
    }
    if (!users.any((user) => user.name == userName)) {
      print("\n$userName is not a registered user.");
      return;
    }
    Book book = books.firstWhere((book) => book.title == bookTitle);
    if (book.borrowed) {
      print("\n${book.title} is already borrowed.");
      return;
    }
    book.borrowed = true;
    print("\n$userName borrowed ${book.title}");
  }

  void returnBook(String bookTitle) {
    Book book = books.firstWhere((book) => book.title == bookTitle);
    if (!book.borrowed) {
      print("\n${book.title} was not borrowed.");
      return;
    }
    book.borrowed = false;
    print("\n${book.title} has been returned.");
  }

  void displayInfo() {
    print("\nLibrary Books:");
    for (var book in books) {
      book.displayInfo();
    }
    print("\nLibrary Users:");
    for (var user in users) {
      user.displayInfo();
    }
  }
}

void main() {
  Library library = Library();
  library.addBook(Book(id: 1, title: "Book 1"));
  library.addBook(Book(id: 2, title: "Book 2"));

  library.addUser(User(id: 1, name: "User 1"));
  library.addUser(User(id: 2, name: "User 2"));

  library.borrowBook("Book 3", "User 2");
  library.borrowBook("Book 2", "User 3");

  library.borrowBook("Book 1", "User 1");
  library.borrowBook("Book 2", "User 2");
  library.borrowBook("Book 2", "User 1");

  library.returnBook("Book 1");
  library.displayInfo();
}
