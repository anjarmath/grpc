class QuestionModel {
  final String number;
  final String question;
  final String? subquestion;
  final String? title;
  final List<int> correctAnswer;
  final List<ChoicesModel> choices;
  final bool forceMultiple;

  const QuestionModel({
    required this.number,
    required this.question,
    this.title,
    this.subquestion,
    required this.correctAnswer,
    required this.choices,
    this.forceMultiple = false,
  });
}

class ChoicesModel {
  final String? choiceString;
  final String? choiceImage;

  const ChoicesModel({
    this.choiceString,
    this.choiceImage,
  });
}
