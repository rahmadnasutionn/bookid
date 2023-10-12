

import 'package:app/model/books.dart';
import 'package:app/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Books book;

  const BookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 250,
            child: Card(
              elevation: 0.4,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(book: book);
                  }));
                },
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                        book.imageAsset,
                        height: 150,
                        fit: BoxFit.cover,
                        width: double.infinity,
                    ),      
                ),
                const SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Text(
                      book.title.length >= 16 ? '${book.title.substring(0, 17)}...' : book.title,
                      style: const TextStyle(
                        fontSize: 16
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.star_sharp, color: Colors.yellow),
                    Text(
                      book.rating
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Chip(label: Text(book.category))
              ],
            ),
          ),
        ),
      ),
    );
  }
}