import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = []; // List to store the answers selected by the user, it will be used to keep track of the user's answers and can be used later to calculate the score or display the results.
  var activeScreen = 'start-screen'; // Variable to hold the currently active screen, it can be either the start screen or the questions screen

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen'; // Update the active screen to the questions screen when the user clicks the start quiz button
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer); // Add the selected answer to the list of selected answers
  }


  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen); // Initialize the screenWidget variable to the start screen, this will be used to determine which screen to display based on the value of activeScreen

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      ); // If the active screen is the questions screen, update the screenWidget variable to the questions screen
    }

    return MaterialApp(
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
          child: screenWidget,
        ),
      ),
    );
  }
}