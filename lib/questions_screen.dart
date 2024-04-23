import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // The question
        Text('The question...'),
        const SizedBox(
          height: 10,
        ),
        // The chioces
        ElevatedButton(
          onPressed: () {},
          child: Text('The answer 1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('The answer 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('The answer 3'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('The answer 4'),
        ),
      ],
    );
  }
}
