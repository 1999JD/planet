import 'package:flutter/material.dart';

class IntroBasic extends StatelessWidget {
  const IntroBasic({super.key, required this.text, required this.url});
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: const BoxDecoration(color: Colors.black12),
        child: Image.asset(
          url,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
    ]);
  }
}
