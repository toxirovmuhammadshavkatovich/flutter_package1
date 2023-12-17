import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
class Flutter_Advaced_Drawed extends StatefulWidget {
  const Flutter_Advaced_Drawed({super.key});

  @override
  State<Flutter_Advaced_Drawed> createState() => _Flutter_Advaced_DrawedState();
}
final advencedDrawerController = AdvancedDrawerController();

class _Flutter_Advaced_DrawedState extends State<Flutter_Advaced_Drawed> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      openRatio: 0.55,
      openScale: 0.8,
      controller: AdvancedDrawerController(),
      backdropColor: Colors.blueGrey,
      rtlOpening: false,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 500),
      child: Scaffold(
        appBar: AppBar(
        title: Text("App Bar Main Scree"),
          leading:
          IconButton(onPressed: (){
            drawedControl();
          },icon:  Icon(Icons.drafts_outlined),),
        ),
      ),
      drawer: SafeArea(
        child: Column(
          children: [
            IconButton(onPressed:(){}, icon: Icon(Icons.verified_user,weight: 100,)),
            Text("salom")

          ],
        ),
      ),
    );
  }
  void drawedControl(){
    advencedDrawerController.showDrawer();
  }
}
