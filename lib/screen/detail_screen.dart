import 'package:app/model/books.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Books book;
  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.38,
              width: double.maxFinite,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(book.imageAsset),
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            tooltip: 'Back',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          const BookmarkButton(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        book.author,
                        style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                      const Spacer(),
                      const Icon(Icons.star_sharp, color: Colors.yellow),
                      Text(book.rating)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    book.title,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Chip(label: Text(book.category)),
                  const SizedBox(height: 10),
                  Text(
                    'Source: ${book.source}',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    book.description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButton() ;
}

class _BookmarkButton extends State<BookmarkButton> {
  bool isRead = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isRead ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isRead = !isRead;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isRead ? 'Sudah di baca' : 'Belum di baca'),
            duration: const Duration(seconds: 1),
          )
        );
      },
      
    );
  }
}