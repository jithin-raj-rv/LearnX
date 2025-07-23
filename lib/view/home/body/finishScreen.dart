import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/controller/HomeScreenController.dart';
import 'package:learnx/controller/quizController.dart';
import 'package:learnx/components/achivements/achievements.dart';
import 'package:learnx/components/score/OverallScore.dart';
import 'package:learnx/components/Icons/callLogo.dart';
import 'package:learnx/components/button/longButton.dart';
import 'package:learnx/components/button/longButtonNoBg.dart';
import 'package:learnx/view/home/homeScreen.dart';

class FinishScreen extends StatelessWidget {
   FinishScreen({super.key});
   final homeController = Homescreen().homeController;
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Column(
      children: [
        Flexible(
          child: ListView(
              children: [
                // Call Logo
                SizedBox(
          height: MediaQuery.of(context).size.height/4,
          child: Padding(
            padding: const EdgeInsets.only(top:18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               CallLogo(appname: "Perfect Score", description: "Quiz Completed", imagecolor: Theme.of(context).primaryColor.withAlpha(150), logoImage: "images/trophy.png"),
              ],
            ),
          ),
        ),
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
                // Navigate to next quiz
                homeController.goToTakeQuiz();
                Get.toNamed("/home");
                // clear the quiz controller
                Get.delete<QuizController>();
                },
                ),
      ],
    );
  }
}