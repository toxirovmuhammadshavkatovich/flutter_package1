import 'package:flutter/material.dart';
class Contacts_Page extends StatefulWidget {
  const Contacts_Page({super.key});

  @override
  State<Contacts_Page> createState() => _Contacts_PageState();
}

class _Contacts_PageState extends State<Contacts_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Contacts Page"),
      ),
    );
  }
}
