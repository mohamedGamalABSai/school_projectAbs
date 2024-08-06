import 'dart:html';

import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class FifthSection extends StatelessWidget {
  const FifthSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Programs",
              style: AppStyles.styleBold48(context),
            ),
          ),
          Container(
            width: screenWidth,
            color: AppColors.secondaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.1, // 10% of screen width
              vertical: screenHeight * 0.05, // 5% of screen height
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AmericanEducationWidget(),
                SizedBox(height: screenHeight * 0.03), // 3% of screen height
                const AmericanEducationWidget(),
                SizedBox(height: screenHeight * 0.03), // 3% of screen height
                const AmericanEducationWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AmericanEducationWidget extends StatelessWidget {
  const AmericanEducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screeenWidth(context) * 0.9,
      height: ScreenSize.screeenHeight(context) * 0.2,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.navColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ScreenSize.screeenHeight(context) * 0.2,
            width: ScreenSize.screeenHeight(context) * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/images/download (2).png"),
              ),
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Expanded(
            // width: ScreenSize.screeenWidth(context) * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'American Education',
                  style: AppStyles.styleRegular32(context)
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: ScreenSize.screeenHeight(context) * 0.01),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  maxLines: 2,
                  style: AppStyles.styleRegular16(context),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '+6000',
                style: AppStyles.styleRegular20(context)
                    .copyWith(color: AppColors.orangeColor),
              ),
              SizedBox(height: ScreenSize.screeenHeight(context) * 0.01),
              Text(
                'student',
                style: AppStyles.styleRegular20(context)
                    .copyWith(color: AppColors.orangeColor),
              ),
            ],
          ),
         const SizedBox(
            width: 20,
          )],
      ),
    );
  }
}
