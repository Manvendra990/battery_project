import 'dart:async';
import 'package:battery_alarm/auth/signup.dart';
import 'package:battery_alarm/utils/colors.dart';
import 'package:battery_alarm/utils/images_utils.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

// ignore: camel_case_types
class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: 
     backgroundColor
        ),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,

   child: bgimg,
        );
  }



  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      navigateUser(); //It will redirect  after 3 seconds
    });
  }



  void navigateUser() async {
     Navigator.of(context).pushReplacement(
           MaterialPageRoute(builder: (BuildContext context) => Signup()));
   }
  }

