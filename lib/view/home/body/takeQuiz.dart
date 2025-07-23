import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnx/components/button/button2.dart';
import 'package:learnx/components/button/longButton.dart';
import 'package:learnx/controller/quizController.dart';
import 'package:learnx/model/questionModel.dart';

class TakeQuiz extends StatelessWidget {
  const TakeQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height/4,
          child: Padding(
            padding: const EdgeInsets.only(top:25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to LearnX!",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text("Select a quiz to start learning",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: QuestionBank.length,
            itemBuilder:(context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ButtonTwo(
                content: "Take a Quiz - ${QuestionBank[index].quizName}",
                onPressed: () {
                  // pass the which quiz to quiz controller
                  Get.put(QuizController()).setQuizIndex(index);
                  // Navigate to quiz screen
                  Get.toNamed('/quiz');
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}