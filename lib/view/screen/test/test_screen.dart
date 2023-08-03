// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/model/question_model.dart';
import 'package:rcgp_checker/riverpod/question_state_provider.dart';
import 'package:rcgp_checker/view/controller/questions.dart';
import 'package:tex_text/tex_text.dart';

import '../../../riverpod/answer_state_provider.dart';
import '../../widget/permasalahan_content.dart';
import '../../widget/quiz_bar.dart';
import '../../widget/quiz_bottom_bar.dart';

class TestScreen extends ConsumerStatefulWidget {
  const TestScreen({super.key});

  @override
  ConsumerState<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends ConsumerState<TestScreen> {
  List<List<int?>> selectedOptions =
      List.generate(questions.length, (index) => [null]);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    // showMasalah();
  }

  void showMasalah() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Bacalah Terlebih Dahulu Permasalahan Berikut!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PermasalahanContent(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('YA, SAYA SUDAH MEMBACA!'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = ref.watch(questionStateProvider);
    final userAnswer = ref.watch(answerStateProvider);
    return Scaffold(
      key: _key,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: Text('Yakin ingin menyelesaikan?'),
                content: Text('Pastikan sudah memeriksa pekerjaan Anda!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Tidak'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.go('/result');
                    },
                    child: Text('Ya'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(
          Icons.flag,
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              for (var i = 0; i < questions.length; i++)
                IconButton.filledTonal(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        userAnswer[i][0] != null
                            ? Colors.green.shade200
                            : Colors.grey),
                  ),
                  onPressed: () {
                    ref.read(questionStateProvider.notifier).toNumber(i);
                  },
                  icon: Text(questions[i].number),
                ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              QuizBar(
                number: question.number,
                onLeadingClick: () {
                  _key.currentState!.openDrawer();
                },
              ),
              SizedBox(height: 12),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                question.title != null
                                    ? Text(
                                        question.title!,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : Container(),
                                TexText(question.question),
                                question.subquestion != null
                                    ? TexText(
                                        question.subquestion!,
                                        mathStyle: MathStyle.displayCramped,
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ..._buildOptions(question,
                          ref.read(questionStateProvider.notifier).getIndex()),
                    ],
                  ),
                ),
              ),
              // Expanded(
              //   child: Wrap(
              //     direction: Axis.vertical,
              //     children: [
              //       ..._buildOptions(question,
              //           ref.read(questionStateProvider.notifier).getIndex()),
              //     ],
              //   ),
              // ),

              QuizzBottomBar(number: question.number)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildOptions(QuestionModel question, int index) {
    final userAnswer = ref.watch(answerStateProvider);
    // final maxWidth = MediaQuery.of(context).size.width;
    List<Widget> optionsList = [];
    for (int i = 0; i < question.choices.length; i++) {
      if (question.correctAnswer.length == 1) {
        // Single choice quiz
        optionsList.add(
          SizedBox(
            // width: question.choices[i].choiceImage != null && maxWidth > 840
            //     ? maxWidth * .3
            //     : maxWidth * .9,
            child: RadioListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  question.choices[i].choiceImage != null
                      ? Image.asset(
                          question.choices[i].choiceImage!,
                          // width: MediaQuery.of(context).size.width * .1,
                        )
                      : Container(),
                  question.choices[i].choiceString != null
                      ? TexText(question.choices[i].choiceString!)
                      : Container()
                ],
              ),
              value: i,
              groupValue: userAnswer[index][0],
              onChanged: (value) {
                setState(() {
                  ref
                      .read(answerStateProvider.notifier)
                      .updateSingle(index, value!);
                  // selectedOptions[index][0] = value!;
                });
              },
            ),
          ),
        );
      } else {
        // Multiple choice quiz
        optionsList.add(
          SizedBox(
            // width: question.choices[i].choiceImage != null && maxWidth > 840
            //     ? maxWidth * .3
            //     : maxWidth * .9,
            child: CheckboxListTile(
              visualDensity: VisualDensity.compact,
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  question.choices[i].choiceImage != null
                      ? Image.asset(
                          question.choices[i].choiceImage!,
                          // height: MediaQuery.of(context).size.height * .1,
                        )
                      : Container(),
                  question.choices[i].choiceString != null
                      ? TexText(question.choices[i].choiceString!)
                      : Container()
                ],
              ),
              value: userAnswer[index].contains(i),
              onChanged: (value) {
                setState(() {
                  // selectedOptions[index].remove(null);
                  if (value!) {
                    ref
                        .read(answerStateProvider.notifier)
                        .addMultiple(index, i);
                    // selectedOptions[index].add(i);
                  } else {
                    ref
                        .read(answerStateProvider.notifier)
                        .removeMultiple(index, i);
                    // selectedOptions[index].remove(i);
                  }
                  // selectedOptions[index].sort();
                });
              },
            ),
          ),
        );
      }
    }
    return optionsList;
  }
}
