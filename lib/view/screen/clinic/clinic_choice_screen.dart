import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/view/controller/clinics.dart';
import 'package:rcgp_checker/view/widget/app_button.dart';

class ClinicChoiceScreen extends StatelessWidget {
  const ClinicChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Pilihan Soal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 12),
                  for (var i = 0; i < clinics.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: AppButton(
                        color: Colors.orange,
                        onPressed: () {
                          context.go('/clinic/$i');
                        },
                        text: Text(
                          clinics[i].number,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
