import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/secon_section_images.dart';

class SeconSectionMobile extends StatelessWidget {
  const SeconSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "New Events",
                style: AppStyles.styleBold20(context)
                    .copyWith(color: AppColors.secondaryColor),
              ),
              const Spacer(),
              Text(
                "New Events",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: AppColors.orangeColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: ScreenSize.screeenHeight(context) * 0.36,
          width: ScreenSize.screeenWidth(context) * 1,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomImage(
                      spacetitle: 10,
                      space: 10,
                      titleFontSize: 16,
                      subTitleFontSize: 12,
                      height: 0.35,
                      maxlines: 3,
                      width: 0.3,
                      photoHeight: 0.2,
                      photoWidth: 0.7,
                      containerColor: Colors.transparent,
                      paddingNum: 0,
                    ),
                  ),
              itemCount: 10),
        ),
      ],
    );
  }
}
