import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key, 
    required this.answerText, 
    required this.onTap
    }); //  Constructor for the AnswerButton widget, it takes two required parameters: answerText which is a string that will be displayed on the button, and onTap which is a function that will be called when the button is pressed.

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),    
      ),
      child: Text(answerText),
    );
  }
}