import 'package:get/get.dart';
import 'package:learnx/view/home/body/finishScreen.dart';
import 'package:learnx/view/quiz.dart';
import 'package:learnx/view/splashScreen.dart';
import 'package:learnx/view/Auth.dart';
import 'package:learnx/view/home/homeScreen.dart';

final List<GetPage> appRoutes = [
  GetPage(
    name: '/splash',
    page: () => Splashscreen(),
  ),
  GetPage(
    name: '/login',
    page: () => Auth(),
  ),
  GetPage(
    name: '/home',
    page: () => Homescreen(),
  ),
  GetPage(
    name: '/quiz',
    page: () => Quiz(),
  ),
  GetPage(name: "/finish", 
  page: () => FinishScreen())
];