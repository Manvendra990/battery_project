import 'package:flutter/cupertino.dart';


int hexColor(String color) {
  String newColor = '0xff$color';
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
return finalColor;
}
// ignore: non_constant_identifier_names
var navbar_icon = Image.asset('assets/images/nav_icon.png');
// ignore: non_constant_identifier_names
var box_icon = Image.asset('assets/images/box_logo.png');
// ignore: non_constant_identifier_names
var main_logo = Image.asset(
  'assets/images/codesandbox.png',
);



var backgroundColor = LinearGradient(
    colors: [Color(hexColor('#2C2B31')), Color(hexColor('#121316'))]);


var buttongradient= LinearGradient(
    colors: [Color(hexColor('#19E712')), Color(hexColor('#477A47'))]);

var batterbox_gradient = LinearGradient(
  
    colors: [Color(hexColor('#2B2C33')), Color(hexColor('#1C1D22'))],
     begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
    
    );



    var float_gradient = LinearGradient(
  
    colors: [Color(hexColor('#2B2C31')), Color(hexColor('#2B2C31'))],
     begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
    
    );





var select_button_gradient = LinearGradient(
  
    colors: [Color(hexColor('#1AE712')), Color(hexColor('#477A47'))],
     begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
    
    );



var music_button_gradient = LinearGradient(
  
    colors: [Color(hexColor('#2B2C33')), Color(hexColor('#1C1D22'))],
     begin: Alignment.topCenter,
                end: Alignment.bottomCenter   
    );


var popUp_gradient = LinearGradient(
  
    colors: [Color(hexColor('#1EDD18')), Color(hexColor('#408B40'))],
     begin: Alignment.topCenter,
                end: Alignment.bottomCenter   
    );

    