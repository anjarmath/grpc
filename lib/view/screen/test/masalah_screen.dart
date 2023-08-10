import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/view/widget/app_button.dart';

import '../../widget/build_masalah.dart';

class MasalahScreen extends StatelessWidget {
  final String? type;
  const MasalahScreen({
    super.key,
    this.type = "1",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const Text(
                'Bacalah Terlebih Dahulu Permasalahan Berikut!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(child: buildMasalah(type)),
              const SizedBox(height: 20),
              AppButton(
                color: Colors.green,
                onPressed: () {
                  context.go('/test?type=$type');
                },
                text: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'YA, SAYA SUDAH MEMBACA!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
