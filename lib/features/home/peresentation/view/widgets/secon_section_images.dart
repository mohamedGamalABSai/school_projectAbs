import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class SeconSectionImages extends StatelessWidget {
  const SeconSectionImages({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 640) {
          // If the width is less than 600 pixels, display only the first CustomImage
          return const CustomImage(
            height: 0.55,
            maxlines: 4,
            width: 0.6,
            photoHeight: 0.25,
            photoWidth: 0.2,
          );
        } else {
          // If the width is greater than or equal to 600 pixels, display the Row with the Column
          return const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImage(
                height: 0.55,
                maxlines: 3,
                width: 0.43,
                photoHeight: 0.3,
                photoWidth: 0.2,
              ),
              SizedBox(
                width: 35,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImage(
                    height: 0.25,
                    maxlines: 1,
                    width: 0.4,
                    photoHeight: 0.1,
                    photoWidth: 0.1,
                  ),SizedBox(height: 20,),
                  CustomImage(
                    height: 0.25,
                    maxlines: 1,
                    width: 0.4,
                    photoHeight: 0.1,
                    photoWidth: 0.1,
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.height,
    required this.maxlines,
    required this.width,
    required this.photoHeight,
    required this.photoWidth,
  });
  final double height, width, photoHeight, photoWidth;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.navColor,
      ),
      padding: const EdgeInsets.all(15.0),
      width: ScreenSize.screeenHeight(context) * width,
      height: ScreenSize.screeenHeight(context) * height,
      child: Column(
        children: [
          Container(
            height: ScreenSize.screeenHeight(context) * photoHeight,
            // width: ScreenSize.screeenWidth(context) * photoWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/images/Mask group.jpg"))),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit.",
                  style: AppStyles.styleSemiBold16(context),
                ),
                const SizedBox(
                  height: 17,
                ),
                Flexible(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: AppStyles.styleRegular16(context),
                    maxLines: maxlines,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
