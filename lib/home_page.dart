import 'package:flutter/material.dart';
import 'package:flutter_package1/servise/utils.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          onPressed: (){
            // Utils.textMe();
            Utils.launchInBrother(Uri.parse("https://youtu.be/knsvp1bjgDQ?si=o2syr6Q93n_503_m"));
          },
            child: Text("Buttonni bos",style: GoogleFonts.abel(),),
        ),
      ),
    );
  }
}
