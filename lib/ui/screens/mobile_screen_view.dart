import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_task_ndex/constants/colors.dart';
import 'package:flutter_task_ndex/constants/strings.dart';
import 'package:flutter_task_ndex/ui/widgets/details_image_one.dart';
import 'package:flutter_task_ndex/ui/widgets/my_elevated_button.dart';
import 'package:flutter_task_ndex/ui/widgets/tab_view.dart';
import 'package:flutter_task_ndex/utils/hide_show_bottom.dart';
import 'package:flutter_svg/svg.dart';
import '../../generated/assets.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/details_image_three.dart';
import '../widgets/details_image_two.dart';
import '../widgets/top_image.dart';

class MobileScreenView extends StatelessWidget {
  MobileScreenView({Key? key}) : super(key: key);
  final hiding = HideShowBottom();


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Stack(
        children: [
          SingleChildScrollView(
            controller: hiding.controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(isMobile: true),
                const TopImage(),
                TabView(),
                const DetailsImageOne(),
                const DetailsImageTwo(),
                const DetailsImageThree(),
                const SizedBox(height: 80)
              ],
            ),
          ),
          _buildBottom()
        ],
      ),
    );
  }

  _buildBottom() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ValueListenableBuilder(
        valueListenable: hiding.visible,
        builder: (context, bool value, child) => AnimatedContainer(
          decoration: Strings.decorWhite,
          duration: const Duration(milliseconds: 500),
          height: value
              ? kBottomNavigationBarHeight + 20
              : (kBottomNavigationBarHeight) / 2,
          child: Center(
              child: MyElevatedButton(
                  borderRadius: BorderRadius.circular(10),
                  onPressed: () => {},
                  child: const Text(Strings.kostenlosRegistrieren))),
        ),
      ),
    );
  }










}
