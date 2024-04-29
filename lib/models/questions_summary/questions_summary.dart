import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/models/questions_summary/summary_items.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - 200,
      ),
      child: SingleChildScrollView(
        child: Column(
          // remove [] cuz we already have List<Map<String, Object>>
          children:
              // transformed a list of a List<Map<String, Object>> to List<Widget>
              summaryData.map((data) =>
                  // Row(
                  //   children: [
                  //     // acess map value by using [] and input key
                  //     Text(((data['question_index'] as int) + 1).toString()),
                  //     Expanded(
                  //       child: Column(
                  //         children: [
                  //           Text(data['question'] as String),
                  //           const SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(data['user_answer'] as String),
                  //           Text(data['correct_answer'] as String),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SummaryItems(data)).toList(),
        ),
      ),
    );
  }
}
