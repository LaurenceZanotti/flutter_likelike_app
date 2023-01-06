import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text("LikeLike")),
          body: const LikeContainer()),
    );
  }
}

class LikeContainer extends StatefulWidget {
  const LikeContainer({super.key});

  @override
  State<LikeContainer> createState() => _LikeContainerState();
}

class _LikeContainerState extends State<LikeContainer> {
  int _like_counter = 0;

  void _handleLikeOnTap() {
    setState(() {
      _like_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Center(
              child: Text(
            "Likes: $_like_counter",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w900, color: Colors.red),
          )),
          const SizedBox(height: 100),
          GestureDetector(
            onTap: () => _handleLikeOnTap(),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.amber),
              child: const Center(
                child: Text(
                  "Dê seu like ❤",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
