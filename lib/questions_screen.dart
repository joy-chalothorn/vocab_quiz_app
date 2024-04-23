import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/data/questions.dart';
import 'package:quiz_vocab_app/widgets/answer_button.dart';
import 'package:quiz_vocab_app/widgets/text_widget.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // The question
          TextBig(
            currentQuestion.text,
          ),
          const SizedBox(
            height: 20,
          ),
          // The chioces
          ...currentQuestion.answers.map(
            (item) => AnswerButton(
              answerText: item,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
