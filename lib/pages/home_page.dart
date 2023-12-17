import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package1/servise/logger.dart';
import 'package:google_fonts/google_fonts.dart';

import '../servise/utils_toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.amber,
          onPressed: () {
            AwesomeDialog(context: context,
              animType: AnimType.scale,
              dialogType: DialogType.info,
              body: Center(child: Text(
                'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),),
              title: 'This is Ignored',
              desc:   'This is also Ignored',
              btnOkOnPress: () {},);
            LogServise.logger.e("button bosildi");

          },
          child: Text("Click me", style: GoogleFonts.abel(),


          ),



        ),


      ),


    );
  }
}
