import 'package:flutter/material.dart';
import 'package:quiz_vocab_app/questions_screen.dart';
import 'package:quiz_vocab_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // late Widget activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    ////// final screenWidget = activeScreen == 'start-screen'
    //////     ? StartScreen(switchScreen)
    //////     : const QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff5c258d),
              Color(0xff4389a2),
            ],
            stops: [0, 1],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        // child: activeScreen,
        //// child: activeScreen == 'start-screen'
        ////     ? StartScreen(switchScreen)
        ////     : const QuestionsScreen(),
        child: screenWidget,
      ),
    );
  }
}
