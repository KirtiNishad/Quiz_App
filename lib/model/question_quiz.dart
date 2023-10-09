class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getSuffledList() {
    final suffleList = List.of(answer);
    suffleList.shuffle();

    return suffleList;
  }
}
