import 'package:flutter/material.dart';
import 'package:planet/ux/widget/Intro.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntroBasic(
        text: 'Your Satisfication is our number One Priority',
        url: 'assets/image/home2.png');
  }
}
