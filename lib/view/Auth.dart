import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learnx/model/loginmodel.dart';
import 'package:learnx/components/Icons/callLogo.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
   @override
  void initState() {
    super.initState();
    // Lock to portrait only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: false,
        physics: BouncingScrollPhysics(),
        children: [
          // Logo Image
          SizedBox(
            // height: MediaQuery.of(context).size.height/4,
            child: Padding(
              padding: const EdgeInsets.only(top:55),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CallLogo(appname: "Welcome to LearnX", description: "Sign in to continue your learning journey",imagecolor: Theme.of(context).primaryColor.withAlpha(100),logoImage: "images/logo.png"),
                ],
              ),
            ),
          ),
          // Sign In Options
          Loginmodel(),
        ],
      ),
    );
  }
}