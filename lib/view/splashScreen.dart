import 'package:flutter/material.dart';
import 'package:learnx/components/Icons/callLogo.dart';
import 'package:learnx/components/lottie/progressbar.dart';
import 'package:get/get.dart';
import 'dart:async';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.offNamed('/login'); // Replace with your login page widget
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo Image
          CallLogo(appname: "LearnX",description: "Interactive Learning Experience",imagecolor: Theme.of(context).primaryColor,logoImage: "images/logo.png"),
          // Progress Indicator
          Progressbar(
            url: "https://lottie.host/310c0757-ac4e-4a87-af92-14cbae4659ee/qGdgIvFiZV.json",
            width: 200,
          ),
        // copyright
        Text("© 2025 LearnX. All rights reserved.",
          style: Theme.of(context).textTheme.bodyMedium,
        )
        ],
      ),
    );
  }
}