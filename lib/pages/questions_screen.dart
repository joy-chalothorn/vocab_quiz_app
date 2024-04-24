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
  var currentQuestionIndex = 0;

  void answerQuestion() {
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // The question
            TextBig(
              'Question: ${currentQuestionIndex + 1}/10',
            ),

            const SizedBox(
              height: 4,
            ),

            TextBig(
              currentQuestion.text,
            ),

            const SizedBox(
              height: 10,
            ),

            // The chioces
            ...currentQuestion.shuffeledAnswer.map(
              (answer) => AnswerButton(
                answerText: answer,
                onTap: answerQuestion,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
