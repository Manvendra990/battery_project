import 'package:flutter/material.dart';

class Audio_Record extends StatelessWidget {
  const Audio_Record({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
child: Column(
  children: [

SizedBox(
  height:20,
),


Center(


  child:   CircleAvatar(
  
    backgroundColor: const Color.fromARGB(255, 119, 255, 124),
  
    radius: 50,
  
    child: CircleAvatar(
  
backgroundColor: Color.fromARGB(255, 48, 46, 46),

      radius: 40,
  
  
  
      child: Icon(Icons.mic),
  
    ),
  
  ),
),

SizedBox(height: 40,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

Container(
  height: 30,
  width: 70,
  decoration: BoxDecoration(
color: Colors.green,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Center(child: Text("Select",style: TextStyle(color: Colors.black),)),
),


Container(
  height: 30,
  width: 70,
  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(8)
  ),
  child: Center(child: Text("Done",style: TextStyle(color: Colors.black),)),
)

  ],
)



  ],
),
  
),

    );
  }
}