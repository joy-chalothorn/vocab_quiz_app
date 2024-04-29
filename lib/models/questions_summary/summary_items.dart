import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/models/questions_summary/question_identifier.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Q: ${itemData['question']}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'A: ${itemData['user_answer']}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 250, 250, 250),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
