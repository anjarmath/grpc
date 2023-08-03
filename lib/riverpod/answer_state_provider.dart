import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rcgp_checker/view/controller/questions.dart';

final answerStateProvider =
    StateNotifierProvider.autoDispose<AnswerStateNotifier, List<List<int?>>>(
        (ref) => AnswerStateNotifier());

class AnswerStateNotifier extends StateNotifier<List<List<int?>>> {
  AnswerStateNotifier()
      : super(List.generate(questions.length, (index) => [null]));

  void updateSingle(int number, int value) {
    state[number][0] = value;
    state[number].sort();
    state = state;
    return;
  }

  void addMultiple(int number, int value) {
    state[number].remove(null);
    state[number].add(value);
    state[number].sort();
    state = state;
    return;
  }

  void removeMultiple(int number, int value) {
    if (state[number].length == 1) {
      state[number].add(null);
    } else {
      state[number].remove(null);
    }

    state[number].remove(value);
    state[number].sort();
    state = state;
    return;
  }
}
