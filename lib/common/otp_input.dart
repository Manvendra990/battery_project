// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
  });

  @override
  _OtpScreenState createState() => _OtpScreenState();
}
class _OtpScreenState extends State<OtpScreen> {
  // ignore: unused_field
  String _pinCode = "";

  @override
  Widget build(BuildContext context) {
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
        onCompleted: (pin) {
          // You can handle the completion of the code verification here
          setState(() {
            _pinCode = pin;
          });
        },

        onChanged: (pin) {
          // You can handle changes to the code as it's being entered here
          setState(() {
            _pinCode = pin;
          });
        },
      ),
    );
  }
}
