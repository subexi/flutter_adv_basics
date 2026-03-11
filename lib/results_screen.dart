import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers // This is a required parameter that will be passed down from the Quiz widget, it will contain the list of answers that the user selected during the quiz. This information can be used to calculate the score or display the results on the results screen.
  });

  final List<String> chosenAnswers; // This is a final variable that will hold the list of answers that the user selected during the quiz, it is marked as final because it will not change after it is initialized in the constructor. This variable can be used to calculate the score or display the results on the results screen.

  List<Map<String, Object>> getSummaryData() { // This is a method that will generate a summary of the quiz results based on the chosen answers and the questions. It will return a list of maps, where each map contains the question text, the correct answer, and the user's answer. This information can be used to display a detailed summary of the quiz results on the results screen.
    final List<Map<String, Object>> summary = []; // Initialize an empty list to hold the summary data, this list will be populated with the question text, correct answer, and user's answer for each question in the quiz.
    for (var i = 0; i < chosenAnswers.length; i++) { // Loop through the chosen answers and populate the summary list with the question text, correct answer, and user's answer for each question in the quiz. The loop will iterate through the chosenAnswers list and use the index to access the corresponding question from the questions list and the correct answer from the answers list.
      summary.add( // Add a new map to the summary list for each question, this map will contain the question text, correct answer, and user's answer. The keys of the map are 'question_index', 'question', 'correct_answer', and 'user_answer', and the values are the corresponding data for each question in the quiz.
        {
          'question_index': i, // Add the index of the question to the summary, this can be used to display the question number in the results summary.
          'question': questions[i].text, // Add the question text to the summary, this can be used to display the question in the results summary.
          'correct_answer': questions[i].answers[0], // Add the correct answer to the summary, this can be used to display the correct answer in the results summary.
          'user_answer': chosenAnswers[i], // Add the user's answer to the summary, this can be used to display the user's answer in the results summary.
        }
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox ( // A SizedBox is a widget that has a specific size. Here we are using it to make the child widget take up the full width of the screen.
      width: double.infinity, // double.infinity is a special value that tells the widget to take up as much space as possible in the given direction. In this case, it will take up the full width of the screen.
      child: Container( // A Container is a widget that allows you to customize its child widget with properties like padding, margin, color, etc. Here we are using it to add some margin around the child widget and to set the background color of the screen.
        margin: const EdgeInsets.all(40), // margin is a property of the Container widget that adds empty space around the child widget. Here we are using EdgeInsets.all(20) to add a margin of 20 pixels on all sides of the child widget.
        child: Column( // A Column is a widget that displays its children in a vertical array. Here we are using it to display the question text and the answer buttons vertically.
          mainAxisAlignment: MainAxisAlignment.center, // mainAxisAlignment is a property of the Column widget that controls how the children are aligned vertically. Here we are using MainAxisAlignment.center to center the children vertically within the Column.
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}