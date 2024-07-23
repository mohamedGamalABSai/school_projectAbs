import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/custom_image_container.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/secon_section_images.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/second_item_images_slider.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/second_section_header.dart';

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
          SeconItemImagesSlider()
        ],
      ),
    );
  }
}