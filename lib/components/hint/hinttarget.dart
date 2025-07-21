import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/controller/quizController.dart';

class HintTarget extends StatelessWidget {
  const HintTarget({super.key,required this.index,required this.text});
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    final QuizController quizController = Get.put(QuizController());
    return DragTarget<String>(
            onAccept: (data) {
              quizController.onDragAccepted(data,index);
            },
            onWillAccept: (data) => data != null,
            onMove: (details) => quizController.onDragEntered(),
            onLeave: (data) => quizController.onDragExited(),
            builder: (context, candidateData, rejectedData) {
              return Container(
                height: 25,
                // Text to input the answer
                child: Text(text, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
              );
            },
          );
  }
}