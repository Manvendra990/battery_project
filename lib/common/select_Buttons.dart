import 'package:battery_alarm/utils/colors.dart';
import 'package:flutter/material.dart';

class Select_Buttons extends StatelessWidget {

  
   Select_Buttons({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
  height: 40,
  decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
gradient: select_button_gradient

),
child: Center(child: Text(name,style: TextStyle(color: Colors.white),)),
);
  }
}