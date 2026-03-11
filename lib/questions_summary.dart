import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(
    this.summaryData,
    {super.key}
  );

  final List<Map<String, Object>> summaryData; // This is a final variable that will hold the summary data for the quiz results, it is marked as final because it will not change after it is initialized in the constructor. This variable will be used to display a detailed summary of the quiz results on the results screen. The summaryData variable is expected to be a list of maps, where each map contains the question text, correct answer, and user's answer for each question in the quiz.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) { // Here we are using the map method to iterate over each item in the summaryData list and create a widget for each item. The data variable in the map function represents the current item that we are iterating over, which is a map containing the question text, correct answer, and user's answer for a specific question in the quiz. We will use this data to create a widget that displays this information in a structured way on the results screen.
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()), // Here we are displaying the question index for each question in the quiz. The question index is stored in the 'question_index' key of the data map, and we are adding 1 to it because we want to display the question number starting from 1 instead of 0. We are also converting it to a string using the toString() method because the Text widget expects a string as its child.
              Expanded( //he Expanded widget is used to make the child widget take up the remaining space in the row, this is necessary because we want the question text and answers to take up as much space as possible while still leaving some space for the question index on the left.
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ), // Here we are adding a SizedBox widget to add some vertical spacing between the question text and the answers. The height property of the SizedBox is set to 5, which means that there will be a 5 pixel gap between the question text and the answers.
                    Text(data['correct_answer'] as String),
                    Text(data['user_answer'] as String),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}

