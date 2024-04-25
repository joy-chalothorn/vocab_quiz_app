import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/data/questions.dart';
import 'package:quiz_vocab_app/widgets/answer_button.dart';
import 'package:quiz_vocab_app/widgets/text_widget.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String chosenAnswer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectedAnswer(selectedAnswers);
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
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // The question no.
            Container(
              width: 220,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color.fromARGB(255, 23, 25, 59).withOpacity(0.5),
              ),
              child: TextBig(
                'Question: ${currentQuestionIndex + 1}/10',
              ),
            ),

            const SizedBox(
              height: 4,
            ),

            // The question
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 13, 13, 14).withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextBig(
                    currentQuestion.text,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // The chioces
            ...currentQuestion.shuffeledAnswer.map(
              (answer) => AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
