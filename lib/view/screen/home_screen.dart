import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rcgp_checker/view/widget/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    'Uji Kemampuan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Permasalahan RCGP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.green),
                  ),
                  const SizedBox(height: 40),
                  AppButton(
                    color: Colors.green,
                    onPressed: () {
                      context.go('/masalah?type=1');
                    },
                    text: const Text(
                      'TIPE A',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppButton(
                    color: Colors.green,
                    onPressed: () {
                      context.go('/masalah?type=2');
                    },
                    text: const Text(
                      'TIPE B',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppButton(
                    color: Colors.green,
                    onPressed: () {
                      context.go('/masalah?type=3');
                    },
                    text: const Text(
                      'TIPE C',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppButton(
                    color: Colors.orange,
                    onPressed: () {
                      context.go('/clinic');
                    },
                    text: const Text(
                      'Klinik Matematika (Proof Construction)',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
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
