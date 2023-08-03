import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rcgp_checker/model/question_model.dart';
import 'package:rcgp_checker/view/controller/questions.dart';

final questionStateProvider =
    StateNotifierProvider.autoDispose<QuestionStateNotifier, QuestionModel>(
        (ref) => QuestionStateNotifier());

class QuestionStateNotifier extends StateNotifier<QuestionModel> {
  QuestionStateNotifier() : super(questions[0]);

  void next() {
    if (questions.indexOf(state) < questions.length - 1) {
      state = questions[questions.indexOf(state) + 1];
    }
  }

  void previous() {
    if (questions.indexOf(state) > 0) {
      state = questions[questions.indexOf(state) - 1];
    }
  }

  void toNumber(int index) {
    state = questions[index];
  }

  int getIndex() {
    return questions.indexOf(state);
  }
}
