import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/widgets/text_widget.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            const Color.fromARGB(255, 53, 58, 114).withOpacity(0.5),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onTap,
      child: SizedBox.fromSize(
        size: const Size(double.infinity, 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextSmall(answerText),
          ],
        ),
      ),
    );
  }
}
