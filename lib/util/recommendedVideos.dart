import 'package:flutter/material.dart';

class RecommendedVideos extends StatelessWidget {
  final String title;
  final String description;
  const RecommendedVideos(this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[100],
        elevation: 6,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[300],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 8,),
                    Text(description, style: TextStyle(letterSpacing: 0.01, fontSize: 13), maxLines: 3, overflow: TextOverflow.ellipsis, softWrap: true,)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
