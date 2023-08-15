import 'package:battery_alarm/common/select_Buttons.dart';
import 'package:battery_alarm/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'audio_record.dart';

class Batter_Select extends StatelessWidget {
 Batter_Select({super.key});
 List<String> numbers = [
  "1%", "2%", "3%", "4%", "5%", "6%", "7%", "8%", "9%", "10%",
  "11%", "12%", "13%", "14%", "15%", "16%", "17%", "18%", "19%", "20%",
  "21%", "22%", "23%", "24%", "25%", "26%", "27%", "28%", "29%", "30%",
  "31%", "32%", "33%", "34%", "35%", "36%", "37%", "38%", "39%", "40%",
  "41%", "42%", "43%", "44%", "45%", "46%", "47%", "48%", "49%", "50%",
  "51%", "52%", "53%", "54%", "55%", "56%", "57%", "58%", "59%", "60%",
  "61%", "62%", "63%", "64%", "65%", "66%", "67%", "68%", "69%", "70%",
  "71%", "72%", "73%", "74%", "75%", "76%", "77%", "78%", "79%", "80%",
  "81%", "82%", "83%", "84%", "85%", "86%", "87%", "88%", "89%", "90%",
  "91%", "92%", "93%", "94%", "95%", "96%", "97%", "98%", "99%", "100%",
];


  AudioPlayer audioPlayer = AudioPlayer();
  String audioState = 'Stopped';





  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body: SingleChildScrollView( 
 child: Column(

  children: [
 SizedBox(height: 30,),

 Center(child: Text("Choose %",style: TextStyle(color: Colors.white,fontSize: 25),)),


 SizedBox(height: 40,),
 Container(
  height: MediaQuery.of(context).size.height * 0.6,
   child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: 
              
              
  
  Container(
    alignment: Alignment.center,
    height: 50,
    width: double.infinity,
 decoration: BoxDecoration(

 borderRadius: BorderRadius.circular(12),
 gradient: batterbox_gradient,

 ),
 child: Column(

 mainAxisAlignment: MainAxisAlignment.end,
  children: [
 
    
  Text(numbers[index],style: TextStyle(color: Colors.white),),
  

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.green, // Change the color here
                  thickness: 2.0, // You can adjust the thickness if needed
                ),
              ),


  ],
 ),            
            ));
          }),
 )

  ],
 ),

 ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 80,
          height: 80,
          child: FloatingActionButton(
              
            onPressed: () {
             showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              bottomSheetTheme:
                              BottomSheetThemeData(
                                  backgroundColor: Colors.black54);
                              return ModalBottomSheet();
                            });
            },
            backgroundColor: Colors.green,
            
            child: Container(
          height: 70,
          width: 70,
              decoration: BoxDecoration(
                  gradient: float_gradient,
                    borderRadius: BorderRadius.circular(50)
              ),
            
              child: Center(
                child:Text('Select')
              ),
            )
          ),
        ),
      ),
    
    );
  }
 }






 class ModalBottomSheet extends StatefulWidget {
  @override
  _ModalBottomSheetState createState() => _ModalBottomSheetState();
 }

 class _ModalBottomSheetState extends State<ModalBottomSheet>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    // TODO: implement build
    return Container(
        height: 300,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 248, 248, 247),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
children: [

 SizedBox(height: 20,),
 Text(''),


  Container(
    alignment: Alignment.center,
    height: 50,
    width: double.infinity,
 decoration: BoxDecoration(

 borderRadius: BorderRadius.circular(12),
 gradient: music_button_gradient

 ),
 child: Column(

 mainAxisAlignment: MainAxisAlignment.end,
  children: [
 
  Text("Music",style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.green, // Change the color here
                  thickness: 2.0, // You can adjust the thickness if needed
                ),
              ),
  ],
 ),            
            ),

            SizedBox(height: 20,),

 Select_Buttons(name: 'Choose File',),
 SizedBox(height: 10,),
 InkWell(
  
  onTap: (){
      showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
  title: Center(child: Text("Audio Recorder")),
  titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
  backgroundColor: Color.fromARGB(255, 255, 255, 255),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20))
  ),
  content:
  
  
         Column(
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
  
  
);
    });
  },
  child: Select_Buttons(name: 'Audio Recoding',)),
SizedBox(height: 10,),
Select_Buttons(name: 'Done',)


],

        ),
        
        
        );}}




