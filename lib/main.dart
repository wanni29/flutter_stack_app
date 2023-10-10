import 'package:flutter/material.dart';

/**
 * HomePage (Header, Bottom)
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: Text("Hello"),
          ),
          Positioned(
            left: 100,
            bottom: 50,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Text("Hello"),
            ),
          )
        ],
      ),
    );
  }
}
