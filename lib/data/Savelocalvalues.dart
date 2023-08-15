// import 'package:shared_preferences/shared_preferences.dart';

// class SaveInputData {
//   static const String _inputKey = "input_data";

//   String inputData;

//   SaveInputData(this.inputData);

//   static Future<void> save(String data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString(_inputKey, data);
//   }

//   static Future<String?> get() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString(_inputKey);

//   }
// }

// class SaveNumberData {
//   static const String _numberKey = "nunber_data";

//   String numberData;
//   SaveNumberData(this.numberData);
//   static Future<void> save(String data) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString(_numberKey, data);
//   }

//   static Future<String?> get() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString(_numberKey);
   
//   }
// }



// class SaveSuccessData {
//   static Future<bool?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('success');
//   }
// }


// class SaveSuccessPassData {
//   static Future<bool?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('successpass');
//   }
// }




// class SaveresponceToken {
//   static Future<String?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('Otptoken');
//   }
// }


// class Savedusername {
//   static Future<String?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('username');
//   }
// }





// class SaveLoginToken {
//   static Future<String?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('keeplogin');
//   }
// }



// class CategorylistCode{
//   static Future<String?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('CategorylistCode');
//   }


// }


// class SaveLoginId {
//   static Future<int?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt('Id');
//   }
// }



// class SaveNumberToken {
//   static Future<String?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('numbertoken');
//   }
// }


// class SaveIdentifireInt {
//   static Future<int?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt('identifier');
//   }
// }

// class forgetPasswordCode {
//   static Future<String?> get() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString('userPasswordCode');
//   }
// }





