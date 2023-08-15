

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key, required this.dialog_maintext, required this.dialog_done});

final String dialog_maintext;
final String dialog_done;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}
class _CustomDialogState extends State<CustomDialog> {
  dialogContent(BuildContext context) {
    return  Container(
      
      height: MediaQuery.of(context).size.height* 0.4,
      decoration:  BoxDecoration(
        color: Color(hexColor('#22CE86')),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset:  Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
       
 mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[


          const Icon(Icons.check_circle_sharp,color: Colors.white,size: 55,),
          const SizedBox(height: 20,),
          Text(
            widget.dialog_maintext,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
                 fontFamily: "AgencyFB"
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Text(
              widget.dialog_done,
              textAlign:TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                
                color: Colors.white
              ),
            ),
            
          ),
            const SizedBox(height: 20,),
          InkWell(


        child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            
          ),
          child: const Text('Close'),
            ),
          ),
          const SizedBox(height: 24.0),
        
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
