import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyFirstPAge extends StatelessWidget {
  const MyFirstPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Animated Text Kit"),),
      body: Center(
        child:DefaultTextStyle(
          style:  const TextStyle(
            fontSize: 25.0,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TyperAnimatedText(""
                  "Salom mening ismim muhammadjon , "
                  "Mening yoshim 13 da, men hozirda 7-sinf o'quvchisiman, "
                  "Men kelajakda IT chi bo'lmoqchiman"
              ),

            ],
          ),
        ),
      ),
    );
  }
}
