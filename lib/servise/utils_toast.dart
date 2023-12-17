import 'dart:io';

import 'package:device_info/device_info.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static showToast(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);

  }

  static Future<Map<String,String>> deviseParm()async{
    Map<String,String> parms = {};
    var deviseInfo = DeviceInfoPlugin();

    if (Platform.isIOS){
      var isoDeviseInfo = await deviseInfo.iosInfo;
      parms.addAll({
        'deviceId': isoDeviseInfo.identifierForVendor,
        'deviseType':"Android",
        'deviseToken': "",
      });
    }else{
      var androidDeviseInfo = await deviseInfo.androidInfo;
      parms.addAll({
        'deviceId': androidDeviseInfo.androidId,
        'deviseType': 'Android',
        'deviseToken': '',
      });

    }
    return parms;


  }
  }
