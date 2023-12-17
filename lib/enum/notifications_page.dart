import 'package:flutter/material.dart';
class Notification_Page extends StatefulWidget {
  const Notification_Page({super.key});

  @override
  State<Notification_Page> createState() => _Notification_PageState();
}

class _Notification_PageState extends State<Notification_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Notification Page"),
      ),
    );
  }
}
