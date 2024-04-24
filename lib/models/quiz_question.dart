class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffeledAnswer {
    final suffeledList = List.of(answers);
    suffeledList.shuffle();
    return suffeledList;
  }
}
