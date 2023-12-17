import 'package:flutter/material.dart';
import 'package:flutter_package1/enum/dashboard_page.dart';
import 'package:flutter_package1/enum/notes_page.dart';
import 'package:flutter_package1/enum/notifications_page.dart';
import 'package:flutter_package1/enum/privacy_policy_page.dart';
import 'package:flutter_package1/enum/send_feedback_page.dart';
import 'package:flutter_package1/enum/settings_page.dart';

import 'enum/contacts_page.dart';
import 'enum/events_page.dart';
import 'my_heder_darwer.dart';

class Muhammad extends StatefulWidget {
  const Muhammad({super.key});

  @override
  State<Muhammad> createState() => _MuhammadState();
}

class _MuhammadState extends State<Muhammad> {
  var currentPage = DrawerSections.dasboard;


  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dasboard){
      container = DashboardPage();
    }else if (currentPage == DrawerSections.contacts){
      container = Contacts_Page();
    }else if (currentPage == DrawerSections.events){
      container = Events_page();
    }else if (currentPage == DrawerSections.notes){
      container = NotesPage();
    }else if (currentPage == DrawerSections.settings){
      container = SettingsPage();
    }else if (currentPage == DrawerSections.notifications){
      container = Notification_Page();
    }else if (currentPage == DrawerSections.privacy_policy){
      container = PrivacyPolicyPage();
    }else if (currentPage == DrawerSections.send_feedback){
      container = SendFeedbackPage();
    }







    return Scaffold(
      appBar: AppBar(
        title: Text("Muhammad"),
      ),
      body: Container(
        child: Center(
          child: Text("Muhammad"),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dasboard ? true : false),
          menuItem(2, "contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Privacy Policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Send Feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color:  selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dasboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dasboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
