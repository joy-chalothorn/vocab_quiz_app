import 'package:flutter/material.dart';

class TextBig extends StatelessWidget {
  const TextBig(this.txt, {super.key});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TextNormal extends StatelessWidget {
  const TextNormal(this.txt, {super.key});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TextSmall extends StatelessWidget {
  const TextSmall(this.txt, {super.key});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }
}
