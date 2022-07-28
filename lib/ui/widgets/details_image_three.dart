import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';
import '../../generated/assets.dart';

class DetailsImageThree extends StatelessWidget {
  const DetailsImageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Positioned(
          top: -50,
          left: -50,
          child: CircleAvatar(
              radius: 130, backgroundColor: AppColors.lightBackgroundColor),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "3.",
                    style: Strings.large,
                  ),
                  const SizedBox(width: 80),
                  Text(
                    Strings.detailOne3,
                    style: Strings.medium.copyWith(
                        color: AppColors.greyTextColor,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SvgPicture.asset(
                Assets.imagesIcMblPersonHandshakes,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
