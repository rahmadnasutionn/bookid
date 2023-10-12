import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});
  final List<String> categories = const <String> ['self improvment', 'psychology', 'history', 'best seller', 'medis', 'finance'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(categories[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.only(right: 10));
        },
      ),
    );
  }
}