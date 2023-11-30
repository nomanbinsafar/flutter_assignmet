import 'package:flutter/material.dart';
import 'book_details_page.dart';

void main() {
  runApp(const MyApp());
}

class Book {
  final String coverImageUrl;
  final String bookName;
  final String authorName;
  final double rating;
  final String shortDescription;

  Book({
    required this.coverImageUrl,
    required this.bookName,
    required this.authorName,
    required this.rating,
    required this.shortDescription,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BookListPage(),
    );
  }
}

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Book List'),
      ),
      body: ListView(
        children: [
          BookCard(
            book: Book(
              coverImageUrl: 'images/book1.jpg',
              bookName: 'The Great Gatsby',
              authorName: 'F. Scott Fitzgerald',
              rating: 4.2,
              shortDescription: 'The Great Gatsby, Third novel by American author F. Scott Fitzgerald, published in 1925. Set in Jazz Age New York, it tells the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman whom he loved in his youth.',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(
                    book: Book(
                      coverImageUrl: 'images/book1.jpg',
                      bookName: 'The Great Gatsby',
                      authorName: 'F. Scott Fitzgerald',
                      rating: 4.2,
                      shortDescription: 'The Great Gatsby, Third novel by American author F. Scott Fitzgerald, published in 1925. Set in Jazz Age New York, it tells the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman whom he loved in his youth.',
                    ),
                  ),
                ),
              );
            },
          ),
          BookCard(
            book: Book(
              coverImageUrl: 'images/book2.jpg',
              bookName: 'To Kill a Mockingbird',
              authorName: 'Harper Lee',
              rating: 5.0,
              shortDescription: 'To Kill a Mockingbird is a coming-of-age story about a girl named Scout. Scout and her brother Jem try to understand and relate to their father, Atticus, who is a lawyer charged with defending a black man falsely accused of raping a white woman.',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(
                    book: Book(
                      coverImageUrl: 'images/book2.jpg',
                      bookName: 'To Kill a Mockingbird',
                      authorName: 'Harper Lee',
                      rating: 5.0,
                      shortDescription: 'To Kill a Mockingbird is a coming-of-age story about a girl named Scout. Scout and her brother Jem try to understand and relate to their father, Atticus, who is a lawyer charged with defending a black man falsely accused of raping a white woman.',
                    ),
                  ),
                ),
              );
            },
          ),
          // Add more BookCard widgets as needed
        ],
      ),
    );
  }
}