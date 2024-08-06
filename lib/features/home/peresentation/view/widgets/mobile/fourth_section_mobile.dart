import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/fourth_item_mobile.dart';

class FourthSectionMobile extends StatelessWidget {
  const FourthSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: Text(
            "Community",
            style: AppStyles.styleBold20(context)
                .copyWith(color: AppColors.secondaryColor),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: SizedBox(
            width: ScreenSize.screeenWidth(context) * 1,
            height: ScreenSize.screeenHeight(context) * 0.55,
            child: CarouselSlider.builder(
              carouselController: controller,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return const  FourthItemMobile();
              },
              options: CarouselOptions(
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                height: ScreenSize.screeenHeight(context) *
                    0.5, // Adjust height as needed
              ),
            ),
          ),
        ),
      ],
    );
  }
}
