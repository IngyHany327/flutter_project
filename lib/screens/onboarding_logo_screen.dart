import 'package:flutter/material.dart';

class OnboardingLogoScreen extends StatelessWidget {
  const OnboardingLogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo with stylized 'a' as document icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'K',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2196F3),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Text(
                      'a',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2196F3),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      child: Icon(
                        Icons.description_outlined,
                        size: 24,
                        color: const Color(0xFF2196F3).withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'bar',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2196F3),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

