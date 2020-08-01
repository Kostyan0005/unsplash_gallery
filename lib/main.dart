import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/photo_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Unsplash Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/photo': (context) => PhotoScreen(),
      },
    ),
  );
}
