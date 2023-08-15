
import 'package:battery_alarm/auth/signup.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';


// ignore: camel_case_types
class SuccessDialoge extends StatelessWidget {
  const SuccessDialoge(
      {super.key, required this.mainheading, required this.aboutheading});

  final String mainheading;
  final String aboutheading;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
contentBox(context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  Color(hexColor('#22CE86')),
      ),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.check_circle,
            size: 80,
            color: Colors.white,
          ),
     
          Center(
            child: Text(mainheading,
            style:  TextStyle(
                   fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold,  fontFamily: "AgencyFB"),
            ),),
          
          Center(
            child: Text(
              aboutheading,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Signup()));
                },
                child: const Text(
                  'close',
                  style: TextStyle(color: Colors.grey),
                )),
          )
        ],
      ),
    );
  }
}
