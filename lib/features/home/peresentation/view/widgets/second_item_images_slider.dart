import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/secon_section_images.dart';
import 'package:school_system_abs/icons.dart';

class SeconItemImagesSlider extends StatelessWidget {
  const SeconItemImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();

    return SizedBox(
      width: ScreenSize.screeenWidth(context) * 0.8,
      height: ScreenSize.screeenHeight(context) * 0.55,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                controller.previousPage(duration: const Duration(seconds: 1));
              },
              icon: const Icon(
                MyFlutterApp.arrowCircleLeft1,
                color: AppColors.secondaryColor,
              )),
          Expanded(
            // width: ScreenSize.screeenWidth(context) * 0.7,
            child: CarouselSlider.builder(
              carouselController: controller,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return const SeconSectionImages();
              },
              options:
                  CarouselOptions(enlargeCenterPage: true, viewportFraction: 1,),
            ),
          ),
          IconButton(
              onPressed: () {
                controller.nextPage(duration: const Duration(seconds: 1));
              },
              icon: const Icon(
                MyFlutterApp.arrowCircleRight,
                color: AppColors.secondaryColor,
              )),
        ],
      ),
    );
  }
}
