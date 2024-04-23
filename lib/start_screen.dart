import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/text_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            'assets/images/quiz.png',
            width: 280,
          ),
        ),
        const TextBig('Vocaburaly Quiz Challenge'),
        const SizedBox(
          height: 50,
        ),

        // Start Button
        Directionality(
          textDirection: TextDirection.rtl,
          child: OutlinedButton.icon(
            onPressed: startQuiz,
            label: const TextBig('Start Quiz'),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 4,
              ),
              side: const BorderSide(width: 1.2, color: Colors.black),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
