// firebase auth .....
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final RxBool rememberCheckBox = false.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var email="";
  var password="";

  var isLoading = false.obs;

    @override
  void onInit() {
    super.onInit();
    _loadRememberMe();
    _checkAuthState();
  }

  // Check if user is already logged in
  void _checkAuthState() {
    User? user = _auth.currentUser;
    if (user != null && rememberCheckBox.value) {
      // User is already logged in and remember me was enabled
      Get.offAllNamed("/home");
    }
  }

  // Load remember me preference
  Future<void> _loadRememberMe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    rememberCheckBox.value = prefs.getBool('remember_me') ?? false;
    
    if (rememberCheckBox.value) {
      emailController.text = prefs.getString('saved_email') ?? '';
    }
  }

  Future<void> loginUser() async {
    email = emailController.text.trim();
    password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Email and Password required");
    } else {

    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar("Success", "Logged in successfully");
      Get.toNamed("/home");
    } on FirebaseException catch (e) {
      Get.snackbar(e.code, e.message ?? "An error occurred");
    } finally {
      isLoading.value = false;
    }
    }
  }
// logout function
  Future<void> logout() async {
  await _auth.signOut();
}
// remember me functionality
  void toggleRememberMe() {
    rememberCheckBox.value = !rememberCheckBox.value;

  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
