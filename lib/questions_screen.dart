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
        const Text('The question...'),
        const SizedBox(
          height: 30,
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 1'),
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 2'),
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 3'),
          ),
      ]),
    );
  }
}