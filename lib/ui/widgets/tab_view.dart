import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

class TabView extends StatelessWidget {
   TabView({Key? key}) : super(key: key);
  ValueNotifier<int> tabPosition = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {

      return Column(
        children: [
          ValueListenableBuilder(
            valueListenable: tabPosition,
            builder: (context, int value, child) => Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.tabBorderColor),
                  borderRadius: BorderRadius.circular(12)),
              child: IntrinsicHeight(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      getContent(Strings.arbeitnehmer, value, 0),
                      const VerticalDivider(
                          color: AppColors.tabBorderColor, width: 1, thickness: 2.5),
                      getContent(Strings.arbeitgeber, value, 1),
                      const VerticalDivider(
                          color: AppColors.tabBorderColor, width: 1, thickness: 2.5),
                      getContent(Strings.temporarburo, value, 2),
                    ]),
              ),
            ),
          ),
          const SizedBox(height: 20),
          _titleText()
        ],
      );
    }
   _titleText() {
     return ValueListenableBuilder(
         valueListenable: tabPosition,
         builder: (context, int value, child) => Container(
           margin: const EdgeInsets.all(35),
           child: Text(
             value == 0
                 ? Strings.title1
                 : value == 1
                 ? Strings.title2
                 : Strings.title3,
             textAlign: TextAlign.center,
             style: Strings.medium.copyWith(color: Strings.darkTextColor),
           ),
         ));
   }
  getContent(String text, int value, int i) {
    return InkWell(
      onTap: () => {tabPosition.value = i},
      child: ClipRRect(
        borderRadius: i == 0
            ? Strings.border1
            : i == 1
            ? Strings.border2
            : Strings.border3,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          color: value == i
              ? AppColors.tabSelectedBackgroundColor
              : AppColors.white,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: value == i
                    ? AppColors.selectedTabTextColor
                    : AppColors.unselectedTabTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
  }

