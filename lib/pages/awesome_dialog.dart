import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
class Awesome_Dialog extends StatefulWidget {
  const Awesome_Dialog({super.key});

  @override
  State<Awesome_Dialog> createState() => _Awesome_DialogState();
}

class _Awesome_DialogState extends State<Awesome_Dialog> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "awesome_dialog",
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("awesome_dialog"),),
      body: Center(
        child: Padding(
padding: const  EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue

                ),
                  onPressed:(){
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.info,
                        animType: AnimType.rightSlide,
                        title: 'Dialog Title',
                        desc: 'Dialog description here.............',
                        btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("info"),

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red
                  ),
                  onPressed:(){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.ERROR,
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("Error")
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange
                  ),
                  onPressed:(){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("Warnig")
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange
                  ),
                  onPressed:(){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question,
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("question")
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green
                  ),
                  onPressed:(){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("succes")
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo
                  ),
                  onPressed:(){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.noHeader,
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("noHeader")
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent
                  ),
                  onPressed:(){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.infoReverse,
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child:Text("infoReverse")
              ),

            ],
          ),
        ),

      ),
    );
  }
}


