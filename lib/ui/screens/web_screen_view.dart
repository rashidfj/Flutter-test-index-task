import 'package:flutter/material.dart';
import 'package:flutter_task_ndex/ui/widgets/tab_view.dart';
import 'package:flutter_task_ndex/ui/widgets/top_image.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/web_detail_images.dart';

class WebScreenView extends StatelessWidget {
  const WebScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CustomAppBar(isMobile: false),
          const TopImage(),
          const SizedBox(height: 20),
          TabView(),
          const SizedBox(height: 20),
          const WebDetailImages(),
          const SizedBox(height: 100)
        ],
      ),
    );
  }


}
