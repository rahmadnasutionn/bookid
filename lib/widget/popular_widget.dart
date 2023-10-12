import 'package:app/model/books.dart';
import 'package:app/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(popularBooks.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 140,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(book: popularBooks[index]);
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          popularBooks[index].imageAsset,
                          height: double.maxFinite,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              popularBooks[index].title.length >= 16 ? '${popularBooks[index].title.substring(0, 17)}...' : popularBooks[index].title,
                              style: const TextStyle(
                                fontSize: 16,
                              )
                            ),
                            Chip(label: Text(popularBooks[index].category)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.star_sharp, color: Colors.yellow),
                                ),
                                Text(popularBooks[index].rating)
                              ],
                            )
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              )
            ),
          ),
        );
      })
    );
  }
}

