// On  work yo yo
// ignore_for_file: use_build_context_synchronously



import 'package:battery_alarm/model/emailVerify.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../auth/common/success_dialog.dart';

// ignore: camel_case_types
class NumberOtpPop extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NumberOtpPop({
    super.key,
    required this.contant,
    required this.contant_sub,
    required this.contant_sub_id,
  });
  final String contant;
  final String contant_sub;
  final String contant_sub_id;

  @override
  State<NumberOtpPop> createState() => _NumberOtpPopState();
}

class _NumberOtpPopState extends State<NumberOtpPop> {
  var emailotp;
  TextEditingController _otpcontroller = TextEditingController();

// int pageCount = int.parse(String  _otpcontroller);
  String _pinCode = "";
  void veriefysuccess() {
    showDialog(
        useSafeArea: false,
        context: context,
        builder: (BuildContext context) => const SuccessDialoge(
              aboutheading: 'you have successfull verified the account',
              mainheading: "number varification is success",
            ));
  }
String email = "";
  String otp = "";
  String type = "";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    email = emailVerifyStor().storemail ?? '';
    otp = emailVerifyStor().otp ?? '';
    type = emailVerifyStor().type ?? '';

  }

  bool _successpass = false;

  final _success = bool;
  bool _loading = false;
  // Future<void> _getSuccesspass() async {
  //   // final successpass = await SaveSuccessPassData.get();

  //   if (successpass != null) {
  //     setState(() {
  //       _successpass = successpass;
  //       print(
  //           'this is the token value dont know true from or not of successpass ${successpass}');
  //     });
  //   }
  // }

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
        color: const Color.fromARGB(255, 252, 251, 251),
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
                child: InkWell(
                    onTap: () async {
                  

                    },
                    child: const Text(
                      'Resend code',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ))),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: InkWell(
              onTap: () async {           

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
            ),
          )
        ],
      ),
    );
  }



//  verifyforMail() async {
//     String? numberData = await SaveNumberData.get();
//     var params = {'email': email, 'otp': _otpcontroller.text, 'type': type};
//     String endpoint = 'verify_otp';
//     dynamic result = await ApiServic.emailOtpverify(endpoint, params,context);

//     if (result != null) {
  
//       if (result['status'] == "1") {
//          Navigator.push(context,
//             MaterialPageRoute(builder: (context) => password_resetScreen()));
//       } else {
//         final mess = result['message'];
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             backgroundColor: Color.fromARGB(255, 76, 122, 175),
//             content: Text(
//           mess,
//         )));
//       }
//     }else{
//     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//             content: Text(
//           'Something went wrong',
//         )));

//     }
//   }




// // //////////////resend number otp///////////




//   void resendOtp() async {
//     String endpoint = 'resend_otp';
//     var params = {
//       'email': email,
//       'type': type,
//     };
//     final _verify = await ApiServic.resendMailOtp(endpoint, params, context);

//     if (_verify) {
//       setState(() {
//         _loading = false;
//       });
//       return;
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text(
//         'Something went wrong',
//       )));
//     }
//   }

  Widget Otpbuild(BuildContext context) {
    // final userOtp = Provider.of<UserEmail>(context);
// userOtp.setOtp(_otpcontroller as int);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
        appContext: context,
        length:6, // You can change the length of the code as per your requirement
        obscureText: false,
        controller: _otpcontroller,
        animationType: AnimationType.slide,
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
          // You can handle changes to the code as it's being entered here
          setState(() {
            _pinCode = pin;
          });
        },
      ),
    );
  }
}
