import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Answertextfield extends StatelessWidget {
 const Answertextfield({super.key,required this.hint,required this.tittle,required this.textFieldIcon});
 final String hint;
 final String tittle;
 final Icon textFieldIcon;

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
                obscureText:  hideText.value,
                decoration: InputDecoration(
                   suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: textFieldIcon,
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