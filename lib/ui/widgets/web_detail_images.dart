import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../generated/assets.dart';

class WebDetailImages extends StatelessWidget {
  const WebDetailImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        _detailsWebImageTwo(),
        _detailsWebImageArrow2(),
        _detailsWebImageOne(),
        _detailsWebImageArrow1(),
      ],
    );
  }

  _detailsWebImageOne(){
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 400),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                  radius: 80,
                  backgroundColor: AppColors.lightBackgroundColor),
              Container(
                margin: const EdgeInsets.only(left: 80, top: 80),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      "1.",
                      style: Strings.large,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      Strings.detailOne1,
                      style: Strings.medium.copyWith(
                          color: AppColors.greyTextColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 100),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  Assets.imagesIcArrowToRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  _detailsWebImageArrow1(){
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 100),
      child: SvgPicture.asset(
        Assets.imagesIcGirlLeftStand,
      ),
    );
  }
  _detailsWebImageTwo() {
    return Container(
      margin: const EdgeInsets.only(top: 500),
      child: ClipPath(
        clipper: WaveClipperTwo(reverse: true, flip: true),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 100),
          color: AppColors.selectedTabTextColor,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 240),
                child: SvgPicture.asset(
                  Assets.imagesIcBoyRightStand,
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 540, top: 60),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      "2.",
                      style: Strings.large,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      Strings.detailOne1,
                      style: Strings.medium.copyWith(
                          color: AppColors.greyTextColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _detailsWebImageArrow2() {
    return Container(
      margin: const EdgeInsets.only(top: 500 + 240),
      child: Stack(
        children: [
          ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                width: double.infinity,
                color: AppColors.selectedTabTextColor,
                height: 100,
              )),
          Center(
            child: SvgPicture.asset(
              Assets.imagesIcArrowToLeft,
              width: 200,
              height: 200,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 200, top: 200),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const CircleAvatar(
                    radius: 80,
                    backgroundColor: AppColors.lightBackgroundColor),
                Container(
                  margin: const EdgeInsets.only(left: 80, top: 20),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Text(
                        "3.",
                        style: Strings.large,
                      ),
                      const SizedBox(width: 40),
                      Text(
                        Strings.detailOne3,
                        style: Strings.medium.copyWith(
                            color: AppColors.greyTextColor,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 600, top: 100),
            child: SvgPicture.asset(
              Assets.imagesIcGirlStraightStand,
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
