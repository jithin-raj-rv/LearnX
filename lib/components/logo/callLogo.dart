import 'package:flutter/material.dart';

class CallLogo extends StatelessWidget {
  const CallLogo({super.key,required this.appname, required this.description,required this.imagecolor,required this.logoImage});
  final String appname;
  final String description;
  final Color imagecolor;
  final String logoImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                  // Logo Image
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Center(
              child: Image.asset(logoImage,
              color: imagecolor,
              scale: 6,),
            ),
          ),

          // App Name
          Text(appname,
            style: Theme.of(context).textTheme.headlineLarge,
          ),

          // Slogan
          Text(description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
      ],
    );
  }
}