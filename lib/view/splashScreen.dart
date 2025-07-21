import 'package:flutter/material.dart';
import 'package:learnx/components/logo/callLogo.dart';
import 'package:lottie/lottie.dart';
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
          ClipRect(
            child: Align(
              alignment: Alignment.center,
              heightFactor: 0.3,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Theme.of(context).primaryColor,
                  BlendMode.srcATop,
                ),
                child: Lottie.network(
                  "https://lottie.host/310c0757-ac4e-4a87-af92-14cbae4659ee/qGdgIvFiZV.json",
                  width: 200,
                  errorBuilder: (context, error, stackTrace) {
                    return CircularProgressIndicator();
                  },
                ),
              ),
            ),
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