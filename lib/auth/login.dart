import 'dart:convert';
import 'package:battery_alarm/auth/signup.dart';
import 'package:battery_alarm/common/input.dart';
import 'package:battery_alarm/dashbord/home.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../common/password_input.dart';

import '../utils/colors.dart';
import '../utils/images_utils.dart';
import 'forgot_password.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({
    super.key,
  });

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  late bool _passwordVisible;
  bool _isLoading = false;

  @override
  void initState() {
    _passwordVisible = false;
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: _isLoading
                ? Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: SpinKitCircle(
                      color: Color.fromARGB(255, 96, 179, 247),
                      size: 80.0,
                    ),
                  )
                : Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                 bgimg,
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "AgencyFB"),
                                    ),
                                  ])),
                          SignupInput(
                            hinttext: 'Email',
                            ispass: false,
                            textInputType: TextInputType.text,
                            textEditingController: _emailcontroller,
                            textvarify: const Padding(
                              padding: EdgeInsets.all(8.0),



                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            onSaved: (value) {},
                            enabled: true,
                            color: Color.fromARGB(255, 250, 250, 250),
                            border: Border.all(
                              width: 0,
                              
                            ),
                            
                            hintstyle: const TextStyle(),
                            erroeStyle: TextStyle(height: 0),
                          ),
                          const SizedBox(height: 20),
                          passwordInput(
                            hinttext: 'Password',
                            ispass: !_passwordVisible,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a password';
                              }

                              if (value.length < 8) {
                                return 'Password must be atleast 8 characters';
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
                            textInputType: TextInputType.text,
                            textEditingController: _passwordcontroller,
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const forgot_password()));
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_screen() ));
                      },
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 56, 104, 144),
                             gradient: buttongradient,
                                  borderRadius: BorderRadius.circular(10)),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 45,
                              child: const Text(
                                'LogIn',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Don`t have an account?',
                                style: TextStyle(color: Colors.white),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Signup()));
                                  },
                                  child: const Text(' Create account',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)))
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

