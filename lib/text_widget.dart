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
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
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
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
