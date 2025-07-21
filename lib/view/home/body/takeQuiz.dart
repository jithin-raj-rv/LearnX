import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnx/components/button/button2.dart';
import 'package:learnx/controller/quizController.dart';
import 'package:learnx/model/questionModel.dart';

class TakeQuiz extends StatelessWidget {
  const TakeQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Welcome to LearnX!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: QuestionBank.length,
              itemBuilder:(context, index) => ButtonTwo(content: "Take a Quiz | ${QuestionBank[index].quizName}",onPressed: () {
              // pass the which quiz to quiz controller
              Get.put(QuizController()).setQuizIndex(index);
              // Navigate to quiz screen
              Get.toNamed('/quiz');
            },)),
          )
        ],
      );
  }
}