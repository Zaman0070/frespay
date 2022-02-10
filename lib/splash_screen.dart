import 'dart:async';

import 'package:flutter/material.dart';

import 'auth/registeration_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => RegistrationScreen()))),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logo',
          child: SizedBox(
            width: 250,
            height: 250,
            child: Image.asset('assets/images/Splash Page.png'),
          ),
        ),
      ),
    );
  }
}