import 'package:flutter/material.dart';

class MyTextformField extends StatelessWidget {
  TextEditingController controller =  TextEditingController();
  IconData? PrefixIcon ;
  String hitText ;
  double border = 8.0 ;
  IconData? suffixIcon ;
  String validator ;

   MyTextformField({
     required this.controller,
      this.PrefixIcon,
     required this.hitText,
     required this.border,
     this.suffixIcon,
     required this.validator ,
     Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(PrefixIcon),
          suffix: Icon(suffixIcon),
          hintText: hitText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(border),
          )
      ),
      validator: (value){
        if(value!.isEmpty){
          return validator ;
        }
        return null ;
      },


    );
  }
}
