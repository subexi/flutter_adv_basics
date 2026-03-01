import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151), 
                Color.fromARGB(255, 107, 15, 168), 
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  ); // runApp is the entry point of the Flutter application, it takes a widget and makes it the root of the widget tree. Here we are using MaterialApp which is a convenience widget that wraps a number of widgets that are commonly required for material design applications. The home property of MaterialApp is set to a Scaffold, which provides a basic material design visual layout structure. The body of the Scaffold is set to StartScreen, which is a custom widget defined in start_screen.dart.
}