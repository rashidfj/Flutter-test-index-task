import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../generated/assets.dart';

class DetailsImageTwo extends StatelessWidget {
  const DetailsImageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: WaveClipperTwo(flip: true,reverse: true),
          child: Container(
            color: AppColors.selectedTabTextColor,
            child: Column(
              children: [
                SizedBox(height: 60),
                Center(child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "2.",
                            style: Strings.large,
                          ),
                          const SizedBox(width: 80),
                          Text(
                            Strings.detailOne1,
                            style: Strings.medium.copyWith(
                                color: AppColors.greyTextColor,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                )),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            width: double.infinity,
            color: AppColors.selectedTabTextColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60.0,left: 60.0,bottom: 60.0),
                  child: SvgPicture.asset(
                    Assets.imagesIcMblGirlStandingStraightCurve,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
