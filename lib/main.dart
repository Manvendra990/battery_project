
import 'package:battery_alarm/auth/splesh_screen.dart';
import 'package:battery_alarm/utils/colors.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
   
      const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  



  Widget build(BuildContext context) {

  // var back = backgroundColor;

    return 
   
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor:Color(0xFFb27232A)
          // 27232A
        ),
        home: const Splash_screen(),
      );
    
  }
  
}



