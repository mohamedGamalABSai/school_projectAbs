import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/second_item_images_slider.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/second_section_header.dart';

class SecondSectionHomeView extends StatelessWidget {
  const SecondSectionHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      width: ScreenSize.screeenWidth(context) * 1,
      // height: ScreenSize.screeenHeight(context) * 0.7,
      child: const Column(
        children: [
          SecondSectionHomeViewHeader(),
          SizedBox(
            height: 40,
          ),
          SeconItemImagesSlider()
        ],
      ),
    );
  }
}
