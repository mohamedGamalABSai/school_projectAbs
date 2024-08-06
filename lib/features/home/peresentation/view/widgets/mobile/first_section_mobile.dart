import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/core/widgets/custom_button.dart';

class FirstSectionMobile extends StatelessWidget {
  const FirstSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: ScreenSize.screeenWidth(context) * 1,
          height: ScreenSize.screeenHeight(context) * 0.2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/images/Mask group.jpg"),
            ),
          ),
        ),
        Container(
          width: ScreenSize.screeenWidth(context) * 1,
          height: ScreenSize.screeenHeight(context) * 0.2,
          color: AppColors.secondaryColor,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lorem ipsum odor amet, consectetuer adipiscing elit.",
                style: AppStyles.styleBold20(context),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: CustomButton(
                  width: ScreenSize.screeenWidth(context) * 0.4,
                  isBold: true,
                  height: ScreenSize.screeenHeight(context) * 0.05,
                  labelName: "Apply Now",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
