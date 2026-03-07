import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() { // The setState method is used to update the state of the widget and trigger a rebuild of the widget tree. This is necessary because when we update the currentQuestionIndex variable, we want the widget to reflect that change and display the next question.
      currentQuestionIndex++; // Here we are using the setState method to update the currentQuestionIndex variable. The setState method is a special method in Flutter that tells the framework that the state of the widget has changed and that it needs to rebuild the widget with the new state. In this case, we are incrementing the currentQuestionIndex variable by 1, which will allow us to move to the next question when the user answers a question.
    });
  }


  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex]; // Here we are getting the current question from the questions list using the currentQuestionIndex variable. The questions list is defined in data/questions.dart and contains all the questions for the quiz. The currentQuestion variable will hold the question that we want to display on the screen based on the currentQuestionIndex.

     // Here we are getting the first question from the questions list, which is defined in data/questions.dart. In a real application, you would want to implement some functionality to keep track of which question the user is currently on and update this variable accordingly.
    return SizedBox( // A SizedBox is a widget that has a specific size. Here we are using it to make the child widget take up the full width of the screen.
      width: double.infinity, // double.infinity is a special value that tells the widget to take up as much space as possible in the given direction. In this case, it will take up the full width of the screen.
      child: Container( // A Container is a widget that allows you to customize its child widget with properties like padding, margin, color, etc. Here we are using it to add some margin around the child widget and to set the background color of the screen.
        margin: const EdgeInsets.all(40), // margin is a property of the Container widget that adds empty space around the child widget. Here we are using EdgeInsets.all(20) to add a margin of 20 pixels on all sides of the child widget.
        child: Column( // A Column is a widget that displays its children in a vertical array. Here we are using it to display the question text and the answer buttons vertically.
          mainAxisAlignment: MainAxisAlignment.center, // mainAxisAlignment is a property of the Column widget that controls how the children are aligned vertically. Here we are using MainAxisAlignment.center to center the children vertically within the Column.
          crossAxisAlignment: CrossAxisAlignment.stretch, // mainAxisAlignment is a property of the Column widget that controls how the children are aligned vertically. Here we are using MainAxisAlignment.center to center the children vertically within the Column.

          children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffeledAnswers().map((answer) { // Here we are using the spread operator (...) to spread the list of AnswerButton widgets that we are creating for each answer in the current question. The map method is used to iterate over each answer in the currentQuestion.answers list and create an AnswerButton for each one. The answer variable in the map function represents the current answer that we are iterating over.
            return AnswerButton(
              answerText: answer, // Here we are displaying each answer for the current question. The answers property of the Question class is a list of strings that contains the possible answers for the question. We are using the map method to iterate over each answer in the list and create an AnswerButton for each one.
              onTap: answerQuestion, // Here we are passing the answerQuestion function for onTap, which will be called when the button is pressed. We are using a lambda function to pass the current answer as an argument to the answerQuestion function.
            ); // The AnswerButton widget is a custom widget that we have defined in answer_button.dart. It takes two parameters: answerText, which is the text that will be displayed on the button, and onTap, which is a function that will be called when the button is pressed. In this case, we are passing the current answer as the answerText and the answerQuestion function for onTap.
          }), // The map method returns an Iterable, so we need to convert it to a List using the toList method. This is necessary because the children property of the Column widget expects a List of widgets.
          ],
        ),
      ),
    );
  }
}