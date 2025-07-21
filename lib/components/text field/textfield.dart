import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class InputTextfield extends StatelessWidget {
 const InputTextfield({super.key,required this.hint,required this.tittle,required this.textFieldIcon});
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
          padding: const EdgeInsets.only(left: 25,top: 5),
          child: Text(tittle),
        ),
        // TextField
        Padding(
          padding:EdgeInsetsGeometry.only(top: 10,bottom: 15,left: 25,right: 25),
          child:Obx(() => TextField(
                obscureText:  hideText.value,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 2.5),
                    child: textFieldIcon,
                  ),
                   suffixIcon: tittle == "Password"
                                ? IconButton(
                                    icon: Icon(hideText.value ? Icons.visibility_off : Icons.visibility),
                                    onPressed: () {
                                      hideText.value = !hideText.value;
                                    },
                                  )
                                : null,
                  hintText: hint,
                  border: OutlineInputBorder(),
                ),
              )),
        ),
      ],
    );
  }
}