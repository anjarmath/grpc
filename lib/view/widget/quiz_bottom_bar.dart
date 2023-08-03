// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/question_state_provider.dart';
import '../controller/questions.dart';
import 'app_button.dart';

class QuizzBottomBar extends ConsumerWidget {
  const QuizzBottomBar({
    super.key,
    required this.number,
  });

  final String number;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Spacer(),
        AppButton(
          color: Colors.blue,
          onPressed: () {
            ref.read(questionStateProvider.notifier).previous();
          },
          text: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: Text('$number / ${questions.length - 3}'),
        ),
        AppButton(
          color: Colors.blue,
          onPressed: () {
            ref.read(questionStateProvider.notifier).next();
          },
          text: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        Spacer(),
        // IconButton.filled(
        //   style: ButtonStyle(
        //     backgroundColor: MaterialStatePropertyAll(Colors.red),
        //   ),
        //   onPressed: () {
        //     showDialog(
        //       context: context,
        //       barrierDismissible: false,
        //       builder: (context) {
        //         return AlertDialog(
        //           title: Text('Yakin ingin menyelesaikan?'),
        //           content: Text('Pastikan sudah memeriksa pekerjaan Anda!'),
        //           actions: [
        //             TextButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //               child: Text('Tidak'),
        //             ),
        //             TextButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //                 context.go('/result');
        //               },
        //               child: Text('Ya'),
        //             ),
        //           ],
        //         );
        //       },
        //     );
        //   },
        //   icon: Icon(
        //     Icons.flag,
        //     color: Colors.white,
        //   ),
        // ),
      ],
    );
  }
}
