import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Utils{
  static void removeStatus(){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
  }
}