import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key}); // This is a stateless widget because the results screen does not need to maintain any state. It will simply display the results based on the answers that were selected by the user, which will be passed down from the Quiz widget.

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
            const Text('List of answers and questions...'),
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