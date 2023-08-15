import 'dart:async';

import 'package:battery_alarm/common/batter_container.dart';
import 'package:battery_alarm/dashbord/batterySelect.dart';
import 'package:battery_alarm/utils/colors.dart';
import 'package:battery_alarm/utils/images_utils.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:battery_plus/battery_plus.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}



class _Home_screenState extends State<Home_screen> {

 final Battery _battery = Battery();


  BatteryState? _batteryState;
  StreamSubscription<BatteryState>? _batteryStateSubscription;
  int _batteryLevel = 0;
  late Timer timer;
  bool? _isInPowerSaveMode;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                "lifeLeft",
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
              SizedBox(
                height: 20,
              ),
 Column(children: <Widget>[
                new CircularPercentIndicator(
                  radius: 75.0,
                  lineWidth: 10.0,
                  percent: 0.7,
                  header: Text(''),
                  center:      Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFb2B2C31),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bolt,
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '70%',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Current level",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
                  backgroundColor: Colors.grey,
                  progressColor: const Color.fromARGB(255, 33, 243, 51),
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Text(
                "11:30 AM - 11-08-2023",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              batter_container(),
            
            ],
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          onPressed: () {
       Navigator.push(context,MaterialPageRoute(builder: (context)=> Batter_Select()));
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
