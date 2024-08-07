import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class SixthSectionMobile extends StatelessWidget {
  const SixthSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Collaborations",
            style: AppStyles.styleBold20(context)
                .copyWith(color: AppColors.secondaryColor),
          ),
        ),
        const CustomImage(
          image: "assets/images/collab/collab1.png",
        ),
        const CustomImage(
          image:"assets/images/collab/collab2.png",
        ),
        const CustomImage(
          image: "assets/images/collab/collab3.png",
        ),
        const CustomImage(
          image:  "assets/images/collab/collab4.png",
        ),
      ],
    );
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screeenWidth(context) * 1,
      height: ScreenSize.screeenHeight(context) * 0.15,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
    );
  }
}
