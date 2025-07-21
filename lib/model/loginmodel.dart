import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:learnx/components/button/brandButtons.dart';
import 'package:learnx/components/divider/divider1.dart';
import 'package:learnx/components/button/longButton.dart';
import 'package:learnx/components/text%20field/textfield.dart';

class Logincomponents extends StatelessWidget {
  const Logincomponents({super.key});

  @override
  Widget build(BuildContext context) {
    final RxBool rememberCheckBox=false.obs;
    return Column(
      children: [
        SizedBox(height: 30),
        
        // Email TextField
        InputTextfield(hint: "Enter your email",tittle: "Email",textFieldIcon: Icon(Icons.email_outlined)),
        // Password TextField
        InputTextfield(hint: "Enter your password",tittle: "Password",textFieldIcon: Icon(Icons.lock_outline),),
        // Remember Me and Forgot Password
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(value: rememberCheckBox.value, onChanged:(value) {
                      rememberCheckBox.value = !rememberCheckBox.value;
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
          Get.toNamed('/home');
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