import 'package:app_7/util/recommendedVideos.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {

  List videoList = [
    ["Learn Flutter in 1Hr", "Hello guys, we'll learn Flutter in this single one-shot video under an hour. Please watch till the end."],
    ["Mastering Dart for Flutter", "In this video, we'll cover Dart programming essentials for Flutter development."],
    ["State Management in Flutter", "A deep dive into Provider, Riverpod, and Bloc for efficient state management."],
    ["Flutter Animations Guide", "Learn how to create smooth animations in Flutter using built-in widgets."],
    ["Build a To-Do App in Flutter", "A step-by-step tutorial to build a fully functional to-do app using Flutter."],
    ["Flutter vs React Native", "A detailed comparison between Flutter and React Native for mobile app development."],
    ["Optimizing Flutter Performance", "Tips and techniques to make your Flutter app faster and more efficient."],
    ["Integrate Firebase with Flutter", "Learn how to integrate Firebase for authentication, database, and storage in Flutter apps."],
    ["Building UI with Flutter", "Best practices for creating stunning UI designs with Flutter's widget system."],
    ["Deploying Flutter Apps", "Guide on publishing your Flutter apps to the Play Store and App Store."],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Icon(Icons.play_circle_outline_rounded, size: 60, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: videoList.length,
                itemBuilder: (context, index) => ListTile(
                  title: RecommendedVideos(videoList[index][0], videoList[index][1]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
