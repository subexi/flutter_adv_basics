import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [

                // The FilledButton is styled to have a circular shape
                // and its background color changes based on whether the user's answer is correct or not.
                FilledButton(
                  style: FilledButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: data['correct_answer'] == data['user_answer']
                        ? const Color(0xFF80C5F7)
                        : const Color(0xFFFF74F7),
                  ),
                  onPressed: () {},
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 6, 6, 6),
                    ),
                  ),
                ),

                // The Expanded widget is used to make the column take up the remaining horizontal
                // space in the row. Inside the column, we display the question text,
                // the correct answer, and the user's answer. The color of the correct
                // answer text changes based on whether the user's answer is correct or not.
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          color: Color(0xFFE7CDF1),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      // The color of the correct answer text changes based on whether
                      // the user's answer is correct or not.
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                          color: data['correct_answer'] == data['user_answer']
                              ? const Color(0xFF80C5F7)
                              : const Color(0xFFFF74F7),
                              fontSize: 12,
                        ),
                      ),

                      // The user's answer is displayed in a fixed color (0xFF80C5F7)
                      // regardless of whether it is correct or not.
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                          color: Color(0xFF80C5F7),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
