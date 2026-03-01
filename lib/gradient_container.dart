import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); // Constructor

  // const GradientContainer.purple({super.key}) // Named constructor for a purple gradient
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;

  final Color color1; // Final variables to hold the colors for the gradient
  final Color color2; // Final variables to hold the colors for the gradient
  

  @override // Override the build method to create the UI
  Widget build(BuildContext context) {
    // Build method returns a widget tree
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(  
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 24, 
                color: Colors.white
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // ElevatedButton is a Material Design button that elevates when pressed
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              'Start Quiz!',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
