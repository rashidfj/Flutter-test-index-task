import 'package:flutter/material.dart';
import 'package:flutter_task_ndex/constants/strings.dart';
import 'package:flutter_task_ndex/ui/pages/my_home_page.dart';
import 'package:flutter_task_ndex/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Utils.removeStatus();
    return const MaterialApp(
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
