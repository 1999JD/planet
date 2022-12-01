import 'package:flutter/material.dart';
import 'package:planet/ux/page/sign/account.dart';
import 'package:planet/ux/widget/horizontal_rule.dart';

class ThirdPary extends StatelessWidget {
  const ThirdPary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Image.asset('assets/image/pot.png'),
            Container(
              color: Colors.red,
              margin: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: const Text("Let's you in "),
            ),
            ListBody(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('Continue with Facebook')),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('Continue with Google')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Continue with Apple')),
              ],
            ),
            const HorizontalRule(text: 'or'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text('Sign in with Password'),
              ),
            ),
          ],
        ));
  }
}
