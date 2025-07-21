import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  void goToTakeQuiz() {
    currentIndex.value = 0;
  }

  void goToFinishScreen() {
    currentIndex.value = 1;
  }
}