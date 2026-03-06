import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {    
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

     // Here we are getting the first question from the questions list, which is defined in data/questions.dart. In a real application, you would want to implement some functionality to keep track of which question the user is currently on and update this variable accordingly.  
    return SizedBox( // A SizedBox is a widget that has a specific size. Here we are using it to make the child widget take up the full width of the screen.
      width: double.infinity, // double.infinity is a special value that tells the widget to take up as much space as possible in the given direction. In this case, it will take up the full width of the screen.
      child: Container( // 
        margin: const EdgeInsets.all(40), // margin is a property of the Container widget that adds empty space around the child widget. Here we are using EdgeInsets.all(20) to add a margin of 20 pixels on all sides of the child widget.
        child: Column( // A Column is a widget that displays its children in a vertical array. Here we are using it to display the question text and the answer buttons vertically.
          mainAxisAlignment: MainAxisAlignment.center, // mainAxisAlignment is a property of the Column widget that controls how the children are aligned vertically. Here we are using MainAxisAlignment.center to center the children vertically within the Column.
          crossAxisAlignment: CrossAxisAlignment.stretch, // mainAxisAlignment is a property of the Column widget that controls how the children are aligned vertically. Here we are using MainAxisAlignment.center to center the children vertically within the Column.
        
          children: [
          Text(
            currentQuestion.text, 
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) { // Here we are using the spread operator (...) to spread the list of AnswerButton widgets that we are creating for each answer in the current question. The map method is used to iterate over each answer in the currentQuestion.answers list and create an AnswerButton for each one. The answer variable in the map function represents the current answer that we are iterating over.
            return AnswerButton(
              answerText: answer, // Here we are displaying each answer for the current question. The answers property of the Question class is a list of strings that contains the possible answers for the question. We are using the map method to iterate over each answer in the list and create an AnswerButton for each one.
              onTap: () {}, // Here we are passing an empty function for onTap, but in a real application, you would want to implement some functionality here.
            ); // The AnswerButton widget is a custom widget that we have defined in answer_button.dart. It takes two parameters: answerText, which is the text that will be displayed on the button, and onTap, which is a function that will be called when the button is pressed. In this case, we are passing the current answer as the answerText and an empty function for onTap.
          }), // The map method returns an Iterable, so we need to convert it to a List using the toList method. This is necessary because the children property of the Column widget expects a List of widgets.
          ],
        ),
      ),
    );
  }
}