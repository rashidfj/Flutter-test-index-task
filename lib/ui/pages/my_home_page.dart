import 'package:flutter/material.dart';
import 'package:flutter_task_ndex/ui/screens/mobile_screen_view.dart';
import 'package:flutter_task_ndex/ui/screens/web_screen_view.dart';
import 'package:flutter_task_ndex/utils/responsive.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MobileScreenView(),
        desktop: const WebScreenView(),
      ),
    );
  }
}
