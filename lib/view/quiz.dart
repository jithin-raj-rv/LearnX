import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/model/quiz_model.dart';
import 'package:learnx/components/container/HowTo.dart';
import 'package:learnx/components/button/NextPageButton.dart';
import 'package:learnx/components/button/PreviousButton.dart';
import 'package:learnx/controller/quizController.dart';

class Quiz extends StatelessWidget {
   Quiz({super.key});
  @override
  Widget build(BuildContext context) {
    final QuizController quizController = Get.put(QuizController());
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            icon: Icon(Icons.arrow_back,size: 22.5,),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Text("Interactive Learning"),
        actions: [
          // rating icon (like 3/10 something)
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: Obx(() => Text("${quizController.pagenumber.value + 1}/10")),
          ),
          // More options Button
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8, left: 8),
            child: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // More options(Maybe settings or help)
              },
            ),
          ),
        ],
      ),
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Margin at the top
                Divider(
                height: 25,
                color: Theme.of(context).colorScheme.primary,
                thickness: 4,
              ),
          
              Quizmodel(),
              // Explain to the user about drag and drop feature.
              Howto(),
            ],
          ),
        ]),
      ),

      bottomNavigationBar: // previous and Next Page
         SizedBox(
          height: 100,
           child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child: Row(
            children: [
              Previousbutton(text: "Previous",onPressed: () {
                quizController.previousPage();
              },),
              Container(width: 40,),
              // Next Page Button
              NextPageButton(text: "Next", onPressed: () {
                if(quizController.filledAnswer.length == quizController.questions[quizController.pagenumber.value].correctAnswers.length && !quizController.filledAnswer.contains("____")){
                  quizController.validateAnswers();
                  quizController.nextPage();
                  quizController.filledAnswer.clear();
                } else {
                  Get.snackbar("Error", "Please fill all the blanks before proceeding.");
                  print(quizController.filledAnswer);
                }
              },),
            ],
         ),
        ),
      ),

    );
  }
}