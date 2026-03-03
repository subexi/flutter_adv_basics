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
            color:const Color.fromARGB(20, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(  
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //     height: 300,
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 24, 
                color: Color.fromARGB(150, 255, 255, 255)
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // OutlinedButton
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              ),
              icon: const Icon(
                Icons.arrow_right_alt
              ),
              label: const Text(
                'Start Quiz!'
              ),
            ), // OutlinedButton with an icon and a label, styled with a white foreground color
        ],
      ),
    );
  }
}
