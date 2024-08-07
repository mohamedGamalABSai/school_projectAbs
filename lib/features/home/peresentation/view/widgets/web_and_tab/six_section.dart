import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class SixSection extends StatelessWidget {
  const SixSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.screeenWidth(context) * 1,
      // height: ScreenSize.screeenHeight(context) * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Collaborations",
              style: AppStyles.styleBold48(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: ScreenSize.screeenHeight(context) * 0.35,
            color: AppColors.whiteColor,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomSixSectionImage(
                  image: "assets/images/collab/collab1.png",
                ),
                CustomSixSectionImage(
                  image: "assets/images/collab/collab2.png",
                ),
                CustomSixSectionImage(
                  image: "assets/images/collab/collab3.png",
                ),
                CustomSixSectionImage(
                  image: "assets/images/collab/collab4.png",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomSixSectionImage extends StatelessWidget {
  const CustomSixSectionImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screeenHeight(context) * 0.15,
      height: ScreenSize.screeenHeight(context) * 0.25,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)),
    );
  }
}
