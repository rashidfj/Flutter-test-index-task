import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../generated/assets.dart';

class DetailsImageOne extends StatelessWidget {
  const DetailsImageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Positioned(
          left: -40,
          bottom: -40,
          child: CircleAvatar(
              radius: 120, backgroundColor: AppColors.lightBackgroundColor),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SvgPicture.asset(
                Assets.imagesIcMblGirlLeftStand,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "1.",
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
