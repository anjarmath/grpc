// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rcgp_checker/view/widget/build_masalah.dart';

import 'app_button.dart';

class QuizBar extends StatelessWidget {
  const QuizBar({
    super.key,
    required this.number,
    required this.onLeadingClick,
    this.permasalahanType = "1",
    this.showPermasalahan = true,
  });

  final String number;
  final Function() onLeadingClick;
  final String? permasalahanType;
  final bool showPermasalahan;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton(
          onPressed: onLeadingClick,
          color: Colors.green.shade50,
          text: Row(
            children: [
              Icon(Icons.menu),
              SizedBox(width: 5),
              Text('No. $number'),
            ],
          ),
        ),
        if (showPermasalahan)
          AppButton(
            color: Colors.blue,
            onPressed: !showPermasalahan
                ? () {}
                : () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Permasalahan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: buildMasalah(permasalahanType),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Tutup'),
                            ),
                          ],
                        );
                      },
                    );
                  },
            text: Row(
              children: const [
                Icon(
                  Icons.visibility,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'Permasalahan',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        // AppButton(
        //   color: Colors.red,
        //   onPressed: () {
        //     context.go('/');
        //   },
        //   text: Text(
        //     'Beranda',
        //     style: TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
