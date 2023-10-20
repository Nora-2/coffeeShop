// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:coffe/core/homelayout.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    animator();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, HomeLayout.id, (r) => false);

      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomeLayout(),
      //     ));
    });
  }

  double width = 0;
  double height = 0;
  void animator() {
    setState(() {
      width = 250;
      height = 250;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          height: height,
          width: width,
          child: const Image(
            image: AssetImage('assets/images/splash.png'),
          ),
        ),
      ),
    );
  }
}
