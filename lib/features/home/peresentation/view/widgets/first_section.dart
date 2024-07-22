import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/core/widgets/custom_button.dart';

class FirstSectionHomeView extends StatelessWidget {
  const FirstSectionHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      width: ScreenSize.screeenWidth(context) * 1,
      height: ScreenSize.screeenHeight(context) * 0.5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            color: AppColors.secondaryColor,
            child: const FirstSectionItem(),
          ),
          Container(
            width: ScreenSize.screeenWidth(context) * 0.6,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/images/Mask group.jpg"))),
          )
        ],
      ),
    );
  }
}

class FirstSectionItem extends StatelessWidget {
  const FirstSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.screeenHeight(context) * 0.35,
      width: ScreenSize.screeenWidth(context) * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              style: AppStyles.styleRegular32(context),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onPressed: () {},
            labelName: "Apply Now",
            isBold: true,
            borderRadius: 8,
            width: ScreenSize.screeenWidth(context) * 0.1,
            height: ScreenSize.screeenHeight(context) * 0.06,
          )
        ],
      ),
    );
  }
}
