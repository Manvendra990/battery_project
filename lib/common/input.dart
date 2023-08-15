

import 'package:flutter/material.dart';


class SignupInput extends StatelessWidget {
  const SignupInput({
    Key? key,
    required this.textEditingController,
    required this.hinttext,
    required this.ispass,
    required this.textInputType,
    this.validator,
    required this.textvarify,
    this.onChanged,
    this.onSave,
    required Null Function(dynamic value) onSaved,
    required this.enabled,
    required this.color,
    required this.border,
    required this.hintstyle,
    required this.erroeStyle,
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
  final Widget textvarify;
  final BoxBorder border;
  final TextStyle hintstyle;
  final TextStyle erroeStyle;

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
            filled: true,
            fillColor: color,
            suffixIcon: textvarify,
            
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 254, 253),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            hintText: hinttext,
            hintStyle: hintstyle,
            errorStyle: erroeStyle,
             focusedBorder: myfocusborder(), // Border when focused
            enabledBorder: myinputborder(), // Border when not focus
          ),
        ),
      ],
    );
  }
}



    //       errorStyle: TextStyle(fontSize: 12.0),
    // contentPadding: EdgeInsets.symmetric(vertical: 10.0),