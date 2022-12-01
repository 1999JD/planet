import 'package:flutter/material.dart';
import 'package:planet/ux/page/sign/third_party.dart';

import 'package:planet/ux/widget/horizontal_rule.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/banner.png',
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text('Create Your Account'),
              ),
              const AccountForm(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
              const HorizontalRule(text: 'or continue with'),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: const ThirdParyRow(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ?',
                    style: TextStyle(color: Colors.black26),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.transparent;
                          }
                          return Colors
                              .transparent; // Defer to the widget's default.
                        },
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccountForm extends StatefulWidget {
  const AccountForm({super.key});

  @override
  State<AccountForm> createState() => _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  String _value = '';

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: TextFormField(
              initialValue: 'Input text',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              initialValue: 'Input text',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.lock,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Remember me'),
            leading: Radio(
              value: 'checked',
              groupValue: _value,
              activeColor: const Color(0xFF6200EE),
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class ThirdParyRow extends StatelessWidget {
  const ThirdParyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
          onPressed: () {},
          child: const Icon(
            Icons.facebook,
            color: Colors.green,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Icon(
            Icons.android,
            color: Colors.green,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Icon(
            Icons.apple,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
