import 'dart:async';

import 'package:feras_pay/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../auth/registeration_screen.dart';

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
          context, MaterialPageRoute(builder: ((context) => LoginScreen()))),
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
            width: 100.w,
            height: 100.h,
            child: Image.asset(
              'assets/images/Splash Page.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
