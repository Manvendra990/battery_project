// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


// ignore: camel_case_types
class passwordInput extends StatelessWidget {
  const passwordInput({
    Key? key,
    required this.textEditingController,
    required this.hinttext,
    required this.ispass,
    required this.textInputType,
    this.validator,

    this.onChanged,
    this.onSave,
    required Null Function(dynamic value) onSaved,
    required this.enabled,
    required this.color,
    required this.border,
    required this.icon, 
  }) : super(key: key);

   final TextEditingController textEditingController;
   final String hinttext;
   final bool ispass;
   final bool enabled;
   final TextInputType textInputType;
   final String? Function(String?)? validator;
   final String? Function(String?)? onChanged;
   final String? Function(String?)? onSave;
   final Color color;
   final BoxBorder border;
  
   final Widget icon;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder myinputborder() {
      return const OutlineInputBorder(
      
        borderSide: BorderSide(
          color: Color.fromARGB(255, 255, 254, 253),
          width: 2,
        ),
      );
    }



    OutlineInputBorder myfocusborder() {
      return const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 45, 219, 36),
          width: 1,
        ),
      );
    }


 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: textEditingController,
          validator: validator,
          obscureText: ispass,
          onChanged: onChanged,
          enabled: enabled,
          onSaved: onSave,
          keyboardType: textInputType,
                  decoration: InputDecoration(
       hintStyle: TextStyle(color: Color.fromARGB(255, 74, 74, 74)),
       hintText: hinttext,
            filled: true,
            fillColor:color,
            suffixIcon: icon,
            // suffixIcon: textvarify,
       border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 254, 253),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),

     focusedBorder: myfocusborder(), // Border when focused
            enabledBorder: myinputborder(), // 
                   ),


        ),

      ],
    );
  }
}
