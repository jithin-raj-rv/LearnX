import 'package:get/get.dart';
import 'package:learnx/controller/HomeScreenController.dart';
import 'package:learnx/data/questions.dart';
import 'package:learnx/model/questionModel.dart';


class QuizController extends GetxController {
  RxList<String> filledAnswer = <String>[].obs;
  RxInt result = 0.obs;
  int totalAnswer = 0;
  RxBool isDraggedOver = false.obs;
  RxInt pagenumber = 0.obs;
  final homeController = Get.find<HomeController>();
  int score = 0;
  List<FillInTheBlankQuestion> questions = QuestionBank[0].question;
// clock to track time spent on quiz
  late final DateTime startTime;

  @override
  void onInit() {
    super.onInit();
    startTime = DateTime.now();
  }

  Duration get timeSpent => DateTime.now().difference(startTime);
// end of clock

  void onDragAccepted(String answer, int index) {
    // Logic to print answer not one by one
    if (filledAnswer.length > index) {
      filledAnswer[index] = answer;
    } else {
      for (int i = filledAnswer.length; i < index; i++) {
      filledAnswer.add("____");
    }
    filledAnswer.add(answer);
    }

    isDraggedOver.value = false;
  }

  void onDragEntered() {
    isDraggedOver.value = true;
  }

  void onDragExited() {
    isDraggedOver.value = false;
  }

  void nextPage() {
    if (pagenumber.value < 9) {
      pagenumber.value++;
      filledAnswer.value = <String>[];
    } else {
      // Handle end of quiz, maybe show results or reset
      Get.snackbar("Congrats", "You have completed the quiz!");
      homeController.goToFinishScreen();
      Get.toNamed("/home");
    }
  }

  void previousPage() {
    if (pagenumber.value > 0) {
      score -= 4; // Deduct points for going back
      Get.snackbar("Score", "You lost 4 points for going back!");
      pagenumber.value--;
      filledAnswer.value = <String>[];
    }
  }
  // Validate answers and calculate score
  void validateAnswers() {
    final question = questions[pagenumber.value];
    for (int i = 0; i < question.correctAnswers.length; i++) {
      if (filledAnswer.length > i && filledAnswer[i] == question.correctAnswers[i]) {
        score++;
      }
    }
    result.value = score;
    // Show score
  }
  // Add up answers loop
  int totalAnswers(){
        for(int i=0; i<questions.length;i++){
      totalAnswer += questions[i].correctAnswers.length;
    }
    return totalAnswer;
  }
  void setQuizIndex(int index) {
    questions = QuestionBank[index].question;
  }


// for text field
// void onAnswerChanged(String value, int index) {
//   // Logic to handle answer change
//   if (index < filledAnswer.length) {
//     filledAnswer[index] = value;
//   } else {
//     filledAnswer.add(value);
//   }
// }
//   // Initialize text controllers for each answer
//   List<TextEditingController> answerControllers = List.generate(
//     QuestionBank[0].question[0].correctAnswers.length,
//     (index) => TextEditingController(),
//   );
}