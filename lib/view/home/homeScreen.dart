import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:learnx/controller/HomeScreenController.dart';
import 'package:learnx/view/home/body/finishScreen.dart';
import 'package:learnx/view/home/body/takeQuiz.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
   final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // brand logo and title
        title: Text("LearnX"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset("images/invlogo.png"
            , color: Theme.of(context).primaryColor,),
        ),
          actions: [
            // Theme toggle button
            Obx(
              () => homeController.currentIndex.value == 1? Container() : IconButton(
                icon: Icon(
                  Theme.of(context).brightness == Brightness.dark
                      ? Icons.light_mode
                      : Icons.dark_mode,
                ),
                onPressed: () {
                  final brightness = Theme.of(context).brightness;
                  if (brightness == Brightness.dark) {
                    Get.changeThemeMode(ThemeMode.light); 
                  } else {
                    Get.changeThemeMode(ThemeMode.dark);
                  }
                },
              ),
            ),
            // profile icon
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 8,bottom: 8, left: 8),
              child: IconButton(
                icon: Image.asset("images/profile-person.png",
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  // Navigate to profile screen
                },
              ),
            ),
          ],

      ),
      body: Obx(() {
      switch (homeController.currentIndex.value) {
      case 0:
        return TakeQuiz();
      // other pages Here
      case 1:
        return FinishScreen();
      default:
        return Center(child: Text("Page not found"));
    }
  }),
    );
  }
}