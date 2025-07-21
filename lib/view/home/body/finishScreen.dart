import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnx/components/achivements/Achievements.dart';
import 'package:learnx/components/score/OverallScore.dart';
import 'package:learnx/components/logo/callLogo.dart';
import 'package:learnx/components/button/longButton.dart';
import 'package:learnx/components/button/longButtonNoBg.dart';
import 'package:learnx/controller/QuizController.dart';

class FinishScreen extends StatelessWidget {
   FinishScreen({super.key});
   final homeController = QuizController().homeController;
   final quizController = QuizController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Flexible(
            child: ListView(
                children: [
                  CallLogo(appname: "Perfect Score", description: "Quiz Completed", imagecolor: Theme.of(context).primaryColor.withAlpha(150), logoImage: "images/trophy.png"),
                  // Overall Score
                  OverallScore(),
                  // Achievements Unlocked
                  Achievements(),
                  
                ],
            ),
          ),
          // View Detailed Report Button
                  LongButton(onPressed:() {
                    // 
                  },
                  text: "View Detailed Report"),
                  // Continue to Next Quiz Button
                  Longbuttonnobg(
                  text: "Continue to Next Quiz",
                  onPressed: () {
                  // clear the quiz controller
                  Get.delete<QuizController>();
                  // Navigate to next quiz
                  homeController.goToTakeQuiz();
                  Get.toNamed("/home");
                  },
                  ),
        ],
      ),
    );
  }
}