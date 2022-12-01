import 'package:flutter/material.dart';
import 'package:planet/ux/widget/Intro.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntroBasic(
        text: 'We Provide High Quality', url: 'assets/image/home.png');
  }
}
