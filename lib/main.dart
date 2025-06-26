import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 200,
        color: Colors.grey[300],
        child: Stack(
          children: [
            Container(width: 100, height: 100, color: Colors.blue),
            Positioned(
              top: 20,
              left: 20,
              child: Container(width: 60, height: 60, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
