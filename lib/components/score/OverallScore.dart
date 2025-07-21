import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/components/score/ScoreBox.dart';
import 'package:learnx/controller/quizController.dart';

class OverallScore extends StatelessWidget {
  const OverallScore({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizController quizController = Get.find<QuizController>();
    int score= quizController.result.value;
    int totalAnswers = quizController.totalAnswers();
    Duration time = quizController.timeSpent;
    String formattedTime = "${time.inMinutes.remainder(60).toString().padLeft(2, '0')}:${time.inSeconds.remainder(60).toString().padLeft(2, '0')}";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withAlpha(100),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Overall Score",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  // percentage calculation
                  "${(score / totalAnswers * 100).toInt()}%",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: score / totalAnswers, //percentage in like 0.5 for 50%
              backgroundColor: Theme.of(context).colorScheme.surface,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Scorebox(title: "Correct \nAnswers",text: "$score/$totalAnswers",icon: "images/tick.png",),
                Scorebox(title: "Time Spent",text: formattedTime,icon: "images/time.png",iconsize: 20,),
              ],
            )
          ],
        ),
      ),
    );
  }
}