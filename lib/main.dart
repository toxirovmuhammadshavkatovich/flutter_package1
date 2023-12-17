import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package1/muhammad.dart';
import 'package:flutter_package1/my_first_page.dart';
import 'package:flutter_package1/pages/awesome_dialog.dart';
import 'package:flutter_package1/pages/flutter_advanced_drawer.dart';
import 'package:flutter_package1/pages/home_page.dart';

import 'home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Muhammad(),
    );
  }

}
// class MyFirstPage extends StatelessWidget {
//   const MyFirstPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Colors.blue,
//           child: Center(
//             child: SizedBox(
//               width: 250.0,
//               child: TextLiquidFill(
//                 text: 'Muhammad',
//                 waveColor: Colors.blueAccent,
//                 boxBackgroundColor: Colors.redAccent,
//                 textStyle: TextStyle(
//                   fontSize: 80.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 boxHeight: 300.0,
//               ),
//             )
//           ),
//         ),
//       ),
//     );
//   }
//
//
// }




