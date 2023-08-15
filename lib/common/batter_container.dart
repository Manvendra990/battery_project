 import 'package:battery_alarm/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/images_utils.dart';

class batter_container extends StatefulWidget {
  const batter_container({super.key});

  @override
  State<batter_container> createState() => _batter_containerState();
}

class _batter_containerState extends State<batter_container> {
  @override
 

Widget build (BuildContext context) {
return

  
  Container(
    height: 50,
    width: double.infinity,
decoration: BoxDecoration(

borderRadius: BorderRadius.circular(12),
gradient: batterbox_gradient,

),
child: Column(
mainAxisAlignment: MainAxisAlignment.end,
  children: [
        Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [  
    Text("40%",style: TextStyle(color: Colors.white),),    
    Text("music mp3",style: TextStyle(color: Colors.white),),
    
    
    
    deleat
    
    ],),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.green, // Change the color here
                  thickness: 2.0, // You can adjust the thickness if needed
                ),
              ),


  ],
),

  );
  

 }
 





Widget battery_container(BuildContext context) {
return

  
  Container(
    alignment: Alignment.center,
    height: 50,
    width: double.infinity,
decoration: BoxDecoration(

borderRadius: BorderRadius.circular(12),
gradient: batterbox_gradient,

),
child: Column(


  children: [
        Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [  
    Text("40%",style: TextStyle(color: Colors.white),),    
    Text("music mp3",style: TextStyle(color: Colors.white),),
    
    
    
    deleat
    
    ],),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.green, // Change the color here
                  thickness: 2.0, // You can adjust the thickness if needed
                ),
              ),


  ],
),

  );
  
}}
 