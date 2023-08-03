import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/view/widget/app_button.dart';
import 'package:rcgp_checker/view/widget/permasalahan_content.dart';

class MasalahScreen extends StatefulWidget {
  const MasalahScreen({super.key});

  @override
  State<MasalahScreen> createState() => _MasalahScreenState();
}

class _MasalahScreenState extends State<MasalahScreen> {
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
              const PermasalahanContent(),
              const SizedBox(height: 20),
              const Spacer(),
              AppButton(
                color: Colors.green,
                onPressed: () {
                  context.go('/test');
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
