import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/riverpod/answer_state_provider.dart';
import 'package:rcgp_checker/view/controller/answer_controller.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAnswer = ref.watch(answerStateProvider);
    final result = AnswerController().checkAnswer(userAnswer);

    if (result == null) {
      return Container();
    }

    final skills = AnswerController().getSkillStatus(result);
    final level = AnswerController().checkLevel(result);

    return Scaffold(
      backgroundColor: Colors.green.shade50,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.go('/');
        },
        child: const Icon(Icons.home),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Level',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green.shade100,
                  ),
                  child: Text(
                    level,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.green),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Kemampuan:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .08),
                  shrinkWrap: true,
                  children: [
                    for (var skill in skills)
                      ListTile(
                        leading: skill.status
                            ? const Icon(
                                Icons.check,
                                color: Colors.green,
                              )
                            : const Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                        title: Text(skill.skill),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
