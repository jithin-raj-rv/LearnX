
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/components/text%20field/AnswerTextField.dart';
import 'package:learnx/components/hint/HintButton.dart';
import 'package:learnx/components/hint/HintContainer.dart';
import 'package:learnx/components/hint/hinttarget.dart';
import 'package:learnx/controller/quizController.dart';


class Quizmodel extends StatelessWidget {

  const Quizmodel({super.key});

  @override
  Widget build(BuildContext context) {

    final QuizController quizController = Get.find<QuizController>();
    
    
    // validation to put the value In Blank Space
    return Obx((){
      RxInt pagenumber = quizController.pagenumber;
    final question = quizController.questions[pagenumber.value];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Introduction Part
        Text("Fill in the blanks", style: Theme.of(context).textTheme.bodySmall),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text("Complete the sentence with appropriate words:", style: Theme.of(context).textTheme.bodyLarge,),
        ),
        // Questions Part
        Obx(() {
                  final filled = quizController.filledAnswer;
                  final parts = question.sentence.split("____");

                  return RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        for(int i=0; i<parts.length;i++)...[
                        TextSpan(text: parts[i]),
                        if ( i < parts.length - 1)
                        WidgetSpan(
                          child: (i < filled.length && filled[i].isNotEmpty && filled [i] != "____") ? Text(filled[i]) : HintTarget(index: i,text: "_____________",),
                        ),
                        ]
                      ],
                    ),
                  );
        }),
        
        // Word Bank Part
        Padding(
          padding: const EdgeInsets.only(top:10,bottom: 10),
          child: Text("Word Bank"),
        ),
        
        Container(),
    
        // Hint Text
        //  TextButton(onPressed:() {
        //     result = question.isCorrect("Google");
        //     print(result);
        //     quizController.filledAnswer.value = "Google";
        //     print(quizController.filledAnswer.value);
        //   }, child: Text("Google")),
        // Hintbutton( answer: question.options[0],),
        // Hintbutton( answer: question.options[2],),


        Wrap(
          spacing: 2.0, // Space between buttons horizontally
          runSpacing: 4.0, // Space between rows when wrapping
          children: [
            for (String option in question.options)
              Hintbutton(answer: option),
          ],
        ),

        // Hint container
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10,),
          child: HintContainer(hintText: question.hint ?? ""),
        ),
    
        // input text field to be inserted
        Answertextfield(hint: " Type your answer here", tittle: "Or type your answer:", textFieldIcon:Icon(Icons.done),
          onSubmitted: () {
           quizController.textFieldOnSubmitted();
          },
          onTap: (){
            quizController.textFieldOnSubmitted();
          },
          controller: quizController.answerController,
        ),

      ],
    );
  }
    ); 
  }

} 