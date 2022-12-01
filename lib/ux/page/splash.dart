import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:planet/ux/page/home.dart';
import 'package:planet/ux/page/sign.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
      reverseDuration: const Duration(milliseconds: 800),
    );
    _navigateToHome(context, () {
      if (!mounted) return;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Sign()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToHome(BuildContext context, VoidCallback onSuccess) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    onSuccess.call();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/home.png',
          ),
          Container(
            margin: const EdgeInsets.only(top: 4, bottom: 24),
            child: const Text(
              'Welcome to Plant World',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SpinKitThreeInOut(
            color: Colors.green[300],
            size: 40.0,
            controller: _controller,
          )
        ],
      ),
    );
  }
}
