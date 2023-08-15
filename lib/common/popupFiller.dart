// ignore_for_file: unused_import, must_be_immutable
import 'dart:convert';
import 'package:battery_alarm/utils/colors.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../auth/common/success_dialog.dart';
import '../service/api_constant.dart';

// ignore: camel_case_typesss

class otppopFiller extends StatefulWidget {
  otppopFiller({
    super.key,
    required this.contant,
    required this.contant_sub,
    required this.contant_sub_id,
    required this.callback,
  });
  @override

  // ignore: override_on_non_overriding_member
  final VoidCallback callback;
  final String contant;
  final String contant_sub;
  final String contant_sub_id;

  @override
  State<otppopFiller> createState() => _otppopFillerState();
}


bool _success = true;
bool _loading = false;
class _otppopFillerState extends State<otppopFiller> {
  var emailotp;
  String? inputData;
  String email = "";
  String otp = "";
  String type = "";
  @override
  void initState() {
    super.initState();

  }

  TextEditingController _otpcontroller = TextEditingController();

// int pageCount = int.parse(String  _otpcontroller);




  @override
  String _pinCode = "";
  // ignore: non_constant_identifier_names
  void Emailsuccess() async {
    showDialog<void>(
        barrierDismissible: false,
        useSafeArea: false,
        context: context,
        builder: (BuildContext context) => const SuccessDialoge(
              aboutheading: 'you have successfully verified the account.',
              mainheading: "Email verified successfully",
            ));}

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(10),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  
  contentBox(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
     gradient: popUp_gradient
      ),
      height: MediaQuery.of(context).size.height * 0.48,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _loading
              ? CircularProgressIndicator(
                  color: Colors.blue,
                )
              : Text(
                  widget.contant,
                  style: const TextStyle(fontSize: 35, fontFamily: "AgencyFB"),
                ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              widget.contant_sub,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),

          Text(
            widget.contant_sub_id,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          //  OtpScreen(),
          Otpbuild(context),

          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: (){},
                   
                      child: const Text(
                        'Resend code',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )))),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
        
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255, 12, 98, 169),
                      Color.fromARGB(255, 38, 207, 249),
                    ],
                  )),
              child: const Text(
                'Verify',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }






Widget Otpbuild(BuildContext context) {
    // final userOtp = Provider.of<UserEmail>(context);
    // userOtp.setOtp(_otpcontroller as int);
    return Container(
 
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
        appContext: context,
        length:
            6, // You can change the length of the code as per your requirement
        obscureText: false,
        controller: _otpcontroller,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          errorBorderColor: const Color.fromARGB(255, 54, 244, 101),
          fieldWidth: 50,
          inactiveFillColor: Colors.grey[100],
          activeFillColor: Colors.white,
          activeColor: Colors.blue,
        ),
          animationDuration: const Duration(milliseconds: 300),
         backgroundColor: Colors.white,
         enableActiveFill: true,
         onChanged: (pin) {
          setState(() {
            _pinCode = pin;
          });
        },
      ),
    );
  }
}
