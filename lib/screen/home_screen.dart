import 'package:app/widget/book_list_widget.dart';
import 'package:app/widget/category_widget.dart';
import 'package:app/widget/popular_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.bookmark),
        title: Text(title),
        actions: const [
          Icon(Icons.notifications_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700
              )
            ),
            const SizedBox(height: 10),
            const CategoryWidget(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
              const Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                )
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ]
          ),
            const SizedBox(height: 10),
            const BookListWidget(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
              const Text(
                'Popular',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                )
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ]
          ),
            const Popular(),
          ],
        ),
      ),
      )
    );
  }
}