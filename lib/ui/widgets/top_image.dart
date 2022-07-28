import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_ndex/ui/widgets/my_elevated_button.dart';
import 'package:flutter_task_ndex/utils/responsive.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../generated/assets.dart';

class TopImage extends StatelessWidget {
  const TopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperOne(),
      child: Responsive(
        desktop: _buildWebView(),
        mobile: _buildMobileView(),
      ),
    );
  }

  _buildMobileView() {
    return Container(
      width: double.infinity,
      color: AppColors.selectedTabTextColor,
      child: Column(
        children: [
          Center(
              child: SvgPicture.asset(
            Assets.imagesIcMblHandshake,
          )),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  _buildWebView() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 40),
      color: AppColors.selectedTabTextColor,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 300,top: 80),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _title(),
                const SizedBox(height: 20),
                MyElevatedButton(
              borderRadius: BorderRadius.circular(10),
              onPressed: () => {},
              child: const Text(Strings.kostenlosRegistrieren))
              ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 60,bottom: 20),
            child: Center(
                child: CircleAvatar(
              radius: 140,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(
                Assets.imagesIcHandShak,
              ),
            )),
          ),
        ],
      ),
    );
  }

  _title() {
    return SizedBox(
        width: 300,
        child: Text(Strings.webTitle,
            style: Strings.large.copyWith(color: Colors.black, fontSize: 48)));
  }
}
