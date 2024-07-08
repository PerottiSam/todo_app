// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      brightness: MediaQuery.platformBrightnessOf(context),
      seedColor: Colors.yellow,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme
      ),
      home: HomePage(),
    );
  }
}