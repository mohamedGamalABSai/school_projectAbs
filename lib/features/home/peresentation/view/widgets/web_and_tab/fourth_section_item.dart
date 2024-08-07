import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class FourthItemContainer extends StatelessWidget {
  const FourthItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screeenWidth(context) * 0.5,
      // height: ScreenSize.screeenHeight(context) * 0.25,
      decoration: BoxDecoration(
        color: AppColors.navColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MediaQuery.of(context).size.width < 1100
              ? SizedBox(
                  child: Image.asset(
                    "assets/images/images/image3.png",
                    fit: BoxFit.fill,
                  ),
                )
              : SizedBox(
                  width: ScreenSize.screeenWidth(context) * 0.5,
                  height: ScreenSize.screeenHeight(context) * 0.3,
                  child: Image.asset(
                    "assets/images/images/image3.png",
                    fit: BoxFit.fill,
                  ),
                ),
          const ColumnItem(),
        ],
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10),
      child: Column(mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jane Doe",
            style: AppStyles.styleRegular16(context),
          ),
          Text(
            "Senior Designer",
            style:
                AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Egestas elit dui scelerisque ut eu purus aliquam vitae habitasse Egestas elit dui scelerisque ut eu purus aliquam vitae habitasse .",
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: AppStyles.styleRegular16(context),
          ),
        ],
      ),
    );
  }
}
