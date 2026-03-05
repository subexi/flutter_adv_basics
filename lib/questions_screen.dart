import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {    
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox( // A SizedBox is a widget that has a specific size. Here we are using it to make the child widget take up the full width of the screen.
      width: double.infinity, // double.infinity is a special value that tells the widget to take up as much space as possible in the given direction. In this case, it will take up the full width of the screen.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // mainAxisAlignment is a property of the Column widget that controls how the children are aligned vertically. Here we are using MainAxisAlignment.center to center the children vertically within the Column.
        children: [
        const Text('The question...',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
          ),
        AnswerButton(
          answerText: 'Answer 1',
          onTap: () {},
        ), 
        AnswerButton(
          answerText: 'Answer 2',
          onTap: () {},
        ), 
        AnswerButton(
          answerText: 'Answer 3',
          onTap: () {},
        ), // AnswerButton is a custom widget that we have defined in answer_button.dart. It takes two parameters: answerText which is the text that will be displayed on the button, and onTap which is a function that will be called when the button is pressed. Here we are passing an empty function for onTap, but in a real application, you would want to implement some functionality here.
        ],
      ),
    );
  }
}