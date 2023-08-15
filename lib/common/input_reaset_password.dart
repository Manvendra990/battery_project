import 'package:flutter/material.dart';

// ignore: camel_case_types
class reset_input extends StatelessWidget {
  const reset_input(
      {super.key,
      required this.textEditingController,
      required this.hinttext,
      required this.ispass,
      required this.textInputType,
      this.validator,
      required this.icon});
  final TextEditingController textEditingController;
  final String hinttext;
  final bool ispass;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    OutlineInputBorder myinputborder() {
      //return type is OutlineInputBorder
      return const OutlineInputBorder(
        //Outline border type for TextFeild
       // borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
        color: Color.fromARGB(255, 145, 203, 248),
        width: 2,
      ));
    }

    // ignore: unused_element
    OutlineInputBorder myfocusborder() {
      //return type is OutlineInputBorder
      return const OutlineInputBorder(
          //Outline border type for TextFeild
          // borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
        color: Color.fromARGB(255, 255, 254, 253),
        width: 5,
      ));
    }

    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 255, 254, 253)),
      child: TextFormField(
        controller: textEditingController,
        validator: validator,
        obscureText: ispass,
        keyboardType: textInputType,
        decoration: InputDecoration(
          errorMaxLines: 2,
          suffixIcon: icon,
          border: myinputborder(),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 246, 245, 245)),
            
          ),
          hintText: hinttext,
          focusColor: const Color.fromARGB(255, 252, 250, 250),
        ),
      ),
    );
  }
}
