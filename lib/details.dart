import 'package:flutter/material.dart';

import 'main.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({Key? key, required this.book}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Book Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Name: ${book.bookName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.asset(
              book.coverImageUrl,
              width: 150,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text('Author: ${book.authorName}'),
            Text('Rating :${book.rating}'),
            SizedBox(height: 16),
            Text(
              'Short Description: ${book.shortDescription}',
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              items: <String>['Chapter 1', 'Chapter 2', 'Chapter 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              style: TextStyle(color: Colors.orange),
              hint: Text('Select Chapter'),
            ),
            Spacer(), // Push the button to the bottom
            ElevatedButton(
              onPressed: () {
                // Navigate back to the Book List page
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Change the color to your desired color
              ),
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}