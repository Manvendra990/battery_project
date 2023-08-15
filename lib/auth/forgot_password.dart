// ignore_for_file: unused_field


import 'package:battery_alarm/auth/password_reset.dart';
import 'package:battery_alarm/common/OtpfillNumVer.dart';
import 'package:battery_alarm/common/input.dart';
import 'package:battery_alarm/common/popupFiller.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/Savelocalvalues.dart';
import '../utils/colors.dart';

// ignore: camel_case_types
class forgot_password extends StatefulWidget {
  const forgot_password({
    super.key,
  });

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

// ignore: camel_case_types
class _forgot_passwordState extends State<forgot_password> {
  final GlobalKey<FormState> _Key = GlobalKey<FormState>();
  final TextEditingController _otpcontroller = TextEditingController();
  final TextEditingController _numbercontroller = TextEditingController();
    final TextEditingController _emailcontroller = TextEditingController();
bool _isLoading =false;

  
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

// ignore: non_constant_identifier_names
/////////////////  send otp for forget password/////////
///




  







 void emailOtpPopup() {
    // ignore: avoid_print
    print('The values are:');
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => otppopFiller(
        contant: "Verify your email",
        contant_sub: "Please enter the 6 digit code sent to",
        contant_sub_id: _emailcontroller.text,
        callback: () {},

        // email: _emailcontroller, otpvalue: Null.,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+(\.[a-zA-Z]+)?$');
    RegExp numberRegex = RegExp(r'^[0-9]+$');
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 34, 45, 54),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _Key,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    // main_svglogo,
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "AgencyFB"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Provide your registered email address  or \n  phone number to reset your password ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SignupInput(
                      hinttext: 'Number/Email',
                      ispass: false,
                      textInputType: TextInputType.text,
                      textEditingController: _numbercontroller,
                      textvarify: const Padding(padding: EdgeInsets.all(0)),
                      onSaved: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid email address or phone number';
                        } else if (numberRegex.hasMatch(value)) {
                          return null;
                        } else if (emailRegex.hasMatch(value)) {
                          return null;
                        } else {
                          return 'Please enter a valid email address or phone number';
                        }
                      },
                      enabled: true,
                      color: const Color.fromARGB(255, 251, 250, 249),
                      border: Border.all(
                        width: 0,
                      ),
                      hintstyle: const TextStyle(),
                      erroeStyle: const TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(height: 20),

                    // const Align(
                    //                 alignment: centerRight,
                    //                                    fffffff child: Text(-----
                    //               'Send on phone number',
                    // style: TextStyle(color: Colors.white),

                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
               emailOtpPopup();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 56, 104, 144),
                            gradient: 
buttongradient,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 45,
                        child: const Text(
                          'Send Code',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }}























