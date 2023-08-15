


// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../utils/colors.dart';
// import '../utils/images_utils.dart';

// void logoutUser(context) async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.remove('keeplogin');
//     await prefs.remove('success');
//   Get.off(() => const LogInScreen());
// }

// Widget drawer(BuildContext context) {
//   return FutureBuilder<String?>(
//     future: Savedusername.get(), // Call the get() method to retrieve the username
//     builder: (context, snapshot) {
//       String? username = snapshot.data;

//       if (snapshot.connectionState == ConnectionState.waiting) {
//         // While waiting for the result, you can show a loading indicator
//         return CircularProgressIndicator();
//       } else if (snapshot.hasError) {
//         // If there's an error, you can show an error message
//         return Text('Error: ${snapshot.error}');
//       } else {
//         // Once the data is available, update the UI
//         return SizedBox(
//           // ... Your existing drawer code ...
//             width: MediaQuery.of(context).size.width * 0.85,     
//               child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//               topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
//           child: Drawer(
//             backgroundColor: Color(hexColor('#354A5F')),
//             // Add a ListView to the drawer. This ensures the user can scroll
//             // through the options in the drawer if there isn't enough vertical
//             // space to fit everything.
//             child: ListView(
//               // Important: Remove any padding from the ListView.
//               padding: EdgeInsets.zero,
//               children: [
//                 DrawerHeader(
//                     padding: const EdgeInsets.only(left: 30),
//                     decoration: const BoxDecoration(
//                         // color: Color(hexColor('354A5F'))
//                         ),
//                     child: Container(
//                       padding: const EdgeInsets.only(top: 40),
//                       width: double.infinity,
//                       height: 60,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const CircleAvatar(
//                             radius: 48,
//                             backgroundColor: Color.fromARGB(255, 130, 146, 169),
//                             child: CircleAvatar(
//                               radius: 44,
//                               backgroundImage: NetworkImage(
//                                   'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 50),
//                             child: Column(
//                               children: [
//                                 Text(
//                                   username ?? 'Guest',
//                                   style: TextStyle(
//                                       fontSize: 20, color: Colors.white),
//                                 ),
//                                 Text(
//                                   'xyz manager',
//                                   style: TextStyle(
//                                       color: Color.fromARGB(255, 150, 139, 139),
//                                       fontSize: 18),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 40, width: 60, child: drawer_svg)
//                         ],
//                       ),
//                     )),
//                 const Divider(
//                   color: Color.fromARGB(255, 116, 116, 116),
//                   thickness: 1,
//                 ),
//               InkWell(
//                 onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => Home_screen()));
//                 },
//                   child: ListTile(
//                     title: const Text(
//                       'Menu',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                     onTap: () {
//                       // Update the state of the app
//                       // ...
//                       // Then close the drawer
                
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ),
//                 ListTile(
//                   leading: drawer_home_svg,
//                   title: const Text(
//                     'Home',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: drawer_folder,
//                   title: const Text(
//                     'Projects',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//                 Container(
//                     margin: const EdgeInsets.only(left: 80, right: 70),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                          All_project()),
//                               );
//                             },
//                             child: const Text(
//                               "Digital Marketing",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             )),
//                         const Divider(
//                           thickness: 2,
//                           color: Color.fromARGB(255, 181, 180, 179),
//                         ),
//                         InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         All_project()),
//                               );
//                             },
//                             child: const Text("Mobile App",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold))),
//                         const Divider(
//                           thickness: 2,
//                           color: Color.fromARGB(255, 181, 180, 179),
//                         ),
                        
//                         InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                              builder: (context) => All_project()),
//                               );
//                             },
//                             child: const Text("Web Developement",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold))),
//                         const Divider(
//                           thickness: 2,
//                           color: Color.fromARGB(255, 181, 180, 179),
//                         ),
//                         InkWell(
//                             onTap: () {
                              
//                               () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>  All_project()),
//                                 );
//                               };
//                             },
//                             child: const Text("Ecommerce",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold))),
//                         const Divider(
//                           thickness: 2,
//                           color: Color.fromARGB(255, 181, 180, 179),
//                         ),
//                       ],
//                     )),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.24,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: <Widget>[
//                       const Divider(
//                         color: Color.fromARGB(255, 113, 113, 113),
//                       ),
//                       ListTile(
//                           leading: logout_svg,
//                           title: InkWell(
//                               onTap: () {
//                                 logoutUser(context);
//                               },
//                               child: const Text(
//                                 'Logout',
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 249, 247, 247)),
//                               ))),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )));}
//     });}



