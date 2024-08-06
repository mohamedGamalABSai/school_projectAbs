import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class FifthSectionMobile extends StatelessWidget {
  const FifthSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Quick Facts",
            style: AppStyles.styleBold20(context)
                .copyWith(color: AppColors.secondaryColor),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          color: AppColors.secondaryColor,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AmericanEducationWidgetMobile(),
                  SizedBox(
                    height: 10,
                  ),
                  AmericanEducationWidgetMobile(),
                  SizedBox(
                    height: 10,
                  ),
                  AmericanEducationWidgetMobile(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class AmericanEducationWidgetMobile extends StatelessWidget {
  const AmericanEducationWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.navColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center the row
        children: [
          Flexible(
            flex: 2, // Adjust flex for image size
            child: Container(
              width: ScreenSize.screeenWidth(context) * 0.2,
              height: ScreenSize.screeenHeight(context) * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  fit: BoxFit.fill, // Adjust fit as needed
                  image: AssetImage("assets/images/images/download (2).png"),
                ),
              ),
            ),
          ),
          const Flexible(
            flex: 3, // Adjust flex for text content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'American Education',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
           Flexible(
            flex: 1, // Adjust flex for stats
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+6000',
                  style: AppStyles.styleRegular10(context).copyWith(color: AppColors.orangeColor),
                ),
                SizedBox(height: 8.0),
                Text(
                  'students',
                  style: AppStyles.styleRegular10(context).copyWith(color: AppColors.orangeColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
