import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/controller/quizController.dart';

class Hintbutton extends StatelessWidget {
   Hintbutton({super.key, required this.answer});
   final QuizController quizController = Get.put(QuizController());
  
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Draggable<String>(
        data: answer, // The data being dragged
        feedback: Material(
          elevation: 4.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              answer,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        childWhenDragging: Opacity(
          opacity: 0.5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: Text(answer),
          ),
        ),
        child: Obx(
          () {
            final index = quizController.filledAnswer.isEmpty ? 0 :  (quizController.filledAnswer.contains("____") ? quizController.filledAnswer.indexOf("____") : quizController.filledAnswer.length);
            return TextButton(
            onPressed: () {
              // Tap to fill functionality
              // Logic to print answer not one by one
              if (quizController.filledAnswer.length > index) {
                  quizController.filledAnswer[index] = answer;
                } else {
                  for (int i = quizController.filledAnswer.length; i < index; i++) {
                  quizController.filledAnswer.add("____");
                }
                if (quizController.filledAnswer.length < quizController.questions[quizController.pagenumber.value].correctAnswers.length) {
                quizController.filledAnswer.add(answer);
                }
                }
            },
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            child: Text(
              answer,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          );
          }
        ),
      ),
    );
  }
}