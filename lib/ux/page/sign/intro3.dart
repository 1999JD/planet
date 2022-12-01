import 'package:flutter/material.dart';
import 'package:planet/ux/page/sign/third_party.dart';
import 'package:planet/ux/widget/Intro.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const IntroBasic(text: 'Lets shop now', url: 'assets/image/home3.png'),
      ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => (const ThirdPary())));
        },
        child: const Text('Get Started'),
      )
    ]);
  }
}
