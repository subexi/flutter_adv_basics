class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffeledAnswers() {
    final shuffledList = List.of(answers); // Create a copy of the original answers list
    shuffledList.shuffle(); // Shuffle the copied list
    return shuffledList; // Return the shuffled list
  }
}