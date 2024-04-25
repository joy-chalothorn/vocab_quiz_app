import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_vocab_app/data/questions.dart';
import 'package:quiz_vocab_app/models/questions_summary.dart';
import 'package:quiz_vocab_app/widgets/text_widget.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  // Result of list questions and answers
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer':
              questions[i].answers[0], //the first is correct answer
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalData = summaryData;
    final numTotalQuestions = questions.length;
    final numCorrectQuestion = totalData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextNormal(
                '$numCorrectQuestion out of $numTotalQuestions questions correctly!'),
          ),
          const SizedBox(
            height: 20,
          ),
          //  List of QuestionsSummary
          QuestionsSummary(totalData),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const TextNormal('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
