import 'package:flutter/material.dart';
import 'package:flutter_task_ndex/constants/strings.dart';

import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool isMobile;

  CustomAppBar({Key? key, required this.isMobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Container(
      color: AppColors.selectedTabTextColor,
      child: Column(
        children: [
          SizedBox(
            height: height,
          ),
          topBarLine(),
          appBar(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  topBarLine() {
    return Container(
      width: double.infinity,
      height: 5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              AppColors.unselectedTabTextColor,
              AppColors.blueBackgroundGradiantColor,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }

  appBar() {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)),
      ),
      backgroundColor: AppColors.white,
      actions: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 16, vertical: isMobile ? 5 : 16),
          child: Text(
            Strings.login,
            style: Strings.medium.copyWith(
                color: AppColors.unselectedTabTextColor,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
