import 'package:flutter/material.dart';
import 'package:shake/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/home": (context) => const HomePage()},
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
