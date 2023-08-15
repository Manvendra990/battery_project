import 'dart:async';
import 'dart:convert';

import 'package:battery_alarm/auth/login.dart';
import 'package:battery_alarm/common/input.dart';
import 'package:battery_alarm/common/password_input.dart';
import 'package:battery_alarm/model/emailVerify.dart';
import 'package:battery_alarm/utils/images_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/colors.dart';


class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // EmailAuthController emailAuthController = Get.put(EmailAuthController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _onlygmail = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _conformpasswordcontroller =
      TextEditingController();
  final TextEditingController _numbercontroller = TextEditingController();


//// popup of email Otp pinput/////



  @override
  void dispose() {
    _passwordcontroller.dispose();
    _emailcontroller.dispose();
    _namecontroller.dispose();
    _conformpasswordcontroller.dispose();
    _numbercontroller.dispose();
    super.dispose();
  }

//// popup of phone Otp pinput/////





  bool _success = false;
  bool _successSec = false;
  bool _isLoading = false;
  void initState() {
    super.initState();
    _passwordVisible = false;

  }





  String? _inputval;


  bool _passwordVisible = false;
  bool confo_passwordVisible = false;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromARGB(255, 34, 45, 54),
        body: SingleChildScrollView(
          child: Center(
            child:

                //  _isLoading
                // ? Center(child: CircularProgressIndicator()) :

                Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                  bgimg,
                    const Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "AgencyFB"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SignupInput(
                      hinttext: 'Name',
                      ispass: false,
                      textInputType: TextInputType.text,
                      textEditingController: _namecontroller,
                      textvarify: const Text(''),
                      onSaved: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        final nameExp = RegExp(r'^[A-Za-z ]+$');
                        if (!nameExp.hasMatch(value)) {
                          return 'Please enter a valid name';
                        }
                        return null;
                      },
                      enabled: true,
                      color: const Color.fromARGB(255, 251, 250, 249),
                      border: Border.all(
                          width: 2, color: Color.fromARGB(255, 237, 238, 239)),
                      hintstyle: const TextStyle(),
                      erroeStyle: TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(height: 20),

                    SignupInput(
                      hinttext: 'email',
                      ispass: false,
                      textInputType: TextInputType.number,
                      textEditingController: _numbercontroller,
                      textvarify: const Padding(
                        padding: EdgeInsets.only(top: 12),
                      ),
                      onSaved: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a number';
                        }
                     final numberExp = RegExp(r'^[0-9]{6,15}$');
                        if (!numberExp.hasMatch(value)) {
                          return 'Please enter a valid number';
                        }
                        return null;
                      },
                      enabled: _successSec ? false : true,
                      color: _successSec
                          ? Colors.transparent
                          : const Color.fromARGB(255, 251, 250, 249),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 237, 238, 239)),
                      hintstyle: _successSec
                          ? const TextStyle(color: Colors.white)
                          : const TextStyle(
                              color: Color.fromARGB(255, 74, 74, 74)),
                      erroeStyle: TextStyle(fontSize: 12.0),
                    ),
                    const SizedBox(height: 20),
                    passwordInput(
                      hinttext: 'Password',
                      ispass: !_passwordVisible,
                      textInputType: TextInputType.text,
                      textEditingController: _passwordcontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        final passwordExp = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
                        if (!passwordExp.hasMatch(value)) {
                          return 'Password should contain atleast 8 characters, one \nuppercase, one lowercase and numbers';
                        }
                        final passExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
                        if (!passExp.hasMatch(value)) {
                          return "atleast one spacial character required";
                        }
                        return null;
                      },
                      icon: InkWell(
                        child: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,color: Colors.green,
                        ),
                        onTap: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      border: Border.all(width: 0),
                      color: Colors.white,
                      enabled: true,
                      onSaved: (value) {},
                    ),
                    const SizedBox(height: 20),
                    passwordInput(
                      hinttext: 'Confirm Password',
                      ispass: !confo_passwordVisible,
                      textInputType: TextInputType.text,
                      textEditingController: _conformpasswordcontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordcontroller.text) {
                          return 'Password does not match';
                        }
                        return null;
                      },
                      icon: InkWell(
                        child: Icon(
                          confo_passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,color: Colors.green,
                        ),
                        onTap: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            confo_passwordVisible = !confo_passwordVisible;
                          });
                        },
                      ),
                      border: Border.all(width: 0),
                      color: Colors.white,
                      enabled: true,
                      onSaved: (value) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        {
                          if(_formKey.currentState!.validate()){
                          if (_success) {
                          // SignUpApi();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    backgroundColor:
                                        Color.fromARGB(255, 76, 122, 175),
                                    duration: Duration(seconds: 1),
                                    dismissDirection: DismissDirection.down,
                                    content:
                                        Text("Please verify email first")));
                          }}

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Home_screen()));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 56, 104, 144),
                           gradient: buttongradient,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 45,
                        child: const Text(
                          'Signup',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const InkWell(
                          child: Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LogInScreen()));
                            },
                            child: const Text(' Sign in',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 251, 251, 251),fontWeight: FontWeight.bold)))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
