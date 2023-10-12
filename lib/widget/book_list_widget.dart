import 'package:app/widget/book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:app/model/books.dart';

class BookListWidget extends StatelessWidget {
  const BookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          final Books bookList = books[index];
          return BookItem(book: bookList);
        },
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(right: 12));
        },
      ),
    );
  }
}