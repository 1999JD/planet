import 'package:flutter/material.dart';

class HorizontalRule extends StatelessWidget {
  const HorizontalRule({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: Colors.black,
          ),
        ),
        Text(text),
        Expanded(
          child: Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
