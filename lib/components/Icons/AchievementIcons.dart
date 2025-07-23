import 'package:flutter/material.dart';

class AchievementIcons extends StatelessWidget {
  const AchievementIcons({super.key,required this.icontext, required this.description,this.iconSize=8});
  final String icontext;
  final String description;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icontext,scale: iconSize,color: Theme.of(context).colorScheme.primary,),
        Padding(
          padding: const EdgeInsets.only(top:8),
          child: Text(description),
        )
      ],
    );
  }
}