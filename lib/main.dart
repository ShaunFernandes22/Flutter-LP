import 'package:flutter/material.dart';
import 'package:together_now_ipd/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Together Now',
      // theme: ThemeData.dark().copyWith(
      //     // primaryColor: Colors.blueGrey[900],
      //     // scaffoldBackgroundColor: Colors.blueGrey[900],
      //     ),
      home: const HomePage(),
    );
  }
}
