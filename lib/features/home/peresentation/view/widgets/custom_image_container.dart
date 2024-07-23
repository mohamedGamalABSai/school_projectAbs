import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer(
      {super.key,
      required this.height,
      required this.borderContainerHeight,
      required this.maxLines,
      required this.imageHeight});
  final double height, borderContainerHeight, imageHeight;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.screeenWidth(context) * 0.3,
      height: ScreenSize.screeenHeight(context) *
          (imageHeight + borderContainerHeight),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: ScreenSize.screeenHeight(context) * imageHeight,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/images/picture.png"))),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: AppColors.whiteColor,
                border: Border(
                  left: BorderSide(color: Colors.grey, width: 0.5),
                  right: BorderSide(color: Colors.grey, width: .5),
                  bottom: BorderSide(color: Colors.grey, width: .5),
                ),
              ),
              height: ScreenSize.screeenHeight(context) * borderContainerHeight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lorem ipsum dolor sit.",
                        style: AppStyles.styleSemiBold16(context)),
                    const SizedBox(
                      height: 17,
                    ),
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                        style: AppStyles.styleRegular16(context),
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
