
import 'package:battery_alarm/common/password_input.dart';
import 'package:flutter/material.dart';

import '../data/Savelocalvalues.dart';
import '../utils/colors.dart';

// ignore: camel_case_types
class password_resetScreen extends StatefulWidget {
  const password_resetScreen({super.key});

  @override
  State<password_resetScreen> createState() => _password_resetScreenState();
}

// ignore: camel_case_types
class _password_resetScreenState extends State<password_resetScreen> {
  final GlobalKey<FormState> _resetKey = GlobalKey<FormState>();
  final TextEditingController _passwordcontroller = TextEditingController();

  final TextEditingController _conformpasswordcontroller =
      TextEditingController();

  bool _passwordVisible = false;
  // ignore: non_constant_identifier_names
  bool _conf_passwordVisible = false;

  String email = "";

  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _resetKey,
      child: Container(
        alignment: Alignment.bottomCenter,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 81, 81, 81),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Reset Password',
                style: TextStyle(fontSize: 30, fontFamily: "AgencyFB"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Enter new password for your account'),
              const SizedBox(
                height: 20,
              ),
              passwordInput(
                textEditingController: _passwordcontroller,
                hinttext: 'Password',
                ispass: _passwordVisible,
                textInputType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 8) {
                    return 'Password must be atleast 8 characters';
                  }
                  final passwordExp =
                      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
                  if (!passwordExp.hasMatch(value)) {
                    return 'Password should contain atleast 8 characters, one \n uppercase, one lowercase and numbers';
                  }
                  final passExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
                  if (!passExp.hasMatch(value)) {
                    return "atleast one spacial character required";
                  }
                  return null;
                },
                icon: InkWell(
                  child: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                  ),
                  onTap: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 80, 132, 237)),
                color: Colors.white,
                onSaved: (value) {},
                enabled: true,
              ),
              const SizedBox(
                height: 20,
              ),
              passwordInput(
                textEditingController: _conformpasswordcontroller,
                hinttext: 'Confirm Password',
                ispass: _conf_passwordVisible,
                textInputType: TextInputType.text,
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
                    _conf_passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onTap: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _conf_passwordVisible = !_conf_passwordVisible;
                    });
                  },
                ),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 80, 132, 237),
                ),
                color: Colors.white,
                enabled: true,
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_resetKey.currentState!.validate()) {
             
                  }
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
                    'Reset Password',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
