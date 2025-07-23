import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnx/components/button/brandButtons.dart';
import 'package:learnx/components/divider/divider1.dart';
import 'package:learnx/components/button/longButton.dart';
import 'package:learnx/components/lottie/progressbar.dart';
import 'package:learnx/components/text%20field/inputTextField.dart';
import 'package:learnx/controller/auth%20controllers/auth_controller.dart';

class Loginmodel extends StatelessWidget {
  Loginmodel({super.key});
  final controller = Get.put(LoginController());
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        // Loading Animation
        Obx(() => controller.isLoading.value ? Progressbar(
          url: "https://lottie.host/ff4825ae-0610-44c3-8d00-33b343987f52/ik0vVeG7av.json",
          width: 50,
          trimfactor: 0.7,
        ) : SizedBox.shrink()),
        // Email TextField
        InputTextfield(hint: "Enter your email",tittle: "Email",textFieldIcon: Icon(Icons.email_outlined),controller: controller.emailController,onSubmitted: () {
          // onpressed here
          controller.emailController.text.isEmpty? Get.snackbar("Email", "Please type email"):controller.passwordController.text.isEmpty? null:controller.loginUser();
          // removed causing errors in android keyboard
          // controller.passwordController.text.isEmpty? passwordFocus.requestFocus():controller.loginUser(); // Move to password field
        },),
        // Password TextField
        InputTextfield(hint: "Enter your password",tittle: "Password",textFieldIcon: Icon(Icons.lock_outline),controller: controller.passwordController,onSubmitted: () {
          // onpressed Here
          controller.emailController.text.isEmpty? Get.snackbar("Email", "Please type email"):controller.passwordController.text.isEmpty? Get.snackbar("Password", "Please type password"):controller.loginUser();
          // controller.emailController.text.isEmpty? emailFocus.requestFocus():controller.passwordController.text.isEmpty? passwordFocus.requestFocus():controller.loginUser();
        },),
        // Remember Me and Forgot Password
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(value: controller.rememberCheckBox.value, onChanged:(value) {
                      controller.toggleRememberMe();
                    },),
                  ),
                  Text("Remember me"),
                ],
              ),
          
              Text("Forgot password?", style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
        // Sign In Button
        LongButton(onPressed: () {
          // Navigate to Home Screen
          controller.loginUser();
        },
        text: "Sign In"),
        // Other Options
       Divider1(),
      //  Social Media Signin options
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Brandbuttons(brandLogo: Icon(Icons.g_mobiledata_rounded),),
            Brandbuttons(brandLogo: Icon(Icons.apple),),
            Brandbuttons(brandLogo: Icon(Icons.facebook),),
          ],
        ),
      ),
      // Sign Up Option
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?",style: Theme.of(context).textTheme.bodySmall,),
          GestureDetector(
            onTap: () {
              // Route to Sign Up Page
            },
            child: Text("Sign Up", style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            )),
          ),
        ],
      )
      ],
    );
  }
}