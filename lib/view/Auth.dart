import 'package:flutter/material.dart';
import 'package:learnx/model/loginmodel.dart';
import 'package:learnx/components/logo/callLogo.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo Image
          CallLogo(appname: "Welcome to LearnX", description: "Sign in to continue your learning journey",imagecolor: Theme.of(context).primaryColor.withAlpha(100),logoImage: "images/logo.png"),
          // Sign In Options
          Logincomponents()
        ],
      ),
    );
  }
}