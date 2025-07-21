import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnx/components/achivements/AchievementIcons.dart';
import 'package:learnx/controller/quizController.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizController quizController = Get.find<QuizController>();
    int score= quizController.result.value;
    int totalAnswers = quizController.totalAnswers();
    Duration time = quizController.timeSpent;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 4.0),
          child: Text("Achievements Unlocked",style: Theme.of(context).textTheme.titleLarge,),
        ),
        // Achievement Icons
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              score > 14 ? const AchievementIcons(icontext: "images/Lightning.png",description: "Fast Learner",iconSize: 80,):Container(),
              time.inMinutes < 1 ? const AchievementIcons(icontext: "images/fire.png",description: "On Fire",):Container(),
              score > totalAnswers ? const AchievementIcons(icontext: "images/star.png",description: "Perfect Score",):Container(),
            ],
          ),
        ),
      ],
    );
  }
}