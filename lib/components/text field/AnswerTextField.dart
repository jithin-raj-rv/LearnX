import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Answertextfield extends StatelessWidget {
  const Answertextfield({super.key,required this.hint,required this.tittle,required this.textFieldIcon,required this.onSubmitted,required this.onTap,required this.controller});

 final Function onSubmitted;
 final String hint;
 final String tittle;
 final Icon textFieldIcon;
 final TextEditingController controller;
 final Function onTap;

  @override
  Widget build(BuildContext context) {
    final RxBool hideText=true.obs;
    
    if(tittle!="Password"){
      hideText.value=false;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(tittle),
        ),
        // TextField
        Padding(
          padding:EdgeInsetsGeometry.only(top: 10,bottom: 15,),
          child:Obx(() => TextField(
                controller: controller,
                onSubmitted: (value) => onSubmitted(),
                obscureText:  hideText.value,
                decoration: InputDecoration(
                   suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        return onTap();
                      },
                      child: textFieldIcon,
                    ),
                  ),
                  hintText: hint,
                  border: OutlineInputBorder(),
                ),
              )),
        ),
      ],
    );
  }
}