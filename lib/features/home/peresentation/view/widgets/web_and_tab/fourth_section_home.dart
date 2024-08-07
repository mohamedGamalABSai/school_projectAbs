import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/fourth_section_item.dart';
import 'package:school_system_abs/icons.dart';

class FourthSectionHome extends StatelessWidget {
  const FourthSectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();

    return SizedBox(
      width: ScreenSize.screeenWidth(context) * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Community",
              style: AppStyles.styleBold48(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: ScreenSize.screeenWidth(context) * 1,
              height: MediaQuery.of(context).size.width < 1100
                  ? ScreenSize.screeenHeight(context) * 0.35
                  : ScreenSize.screeenHeight(context) * 0.55,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (MediaQuery.of(context).size.width >= 1100)
                    IconButton(
                      onPressed: () {
                        controller.previousPage(
                            duration: const Duration(milliseconds: 300));
                      },
                      icon: const Icon(
                        MyFlutterApp.arrowCircleLeft1,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  SizedBox(
                    width: ScreenSize.screeenWidth(context) * 0.9,
                    child: CarouselSlider.builder(
                      carouselController: controller,
                      itemCount: 20,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return const FourthItemContainer();
                      },
                      options: CarouselOptions(
                          // aspectRatio: (417*1.33) / (496*1.33),
                          enlargeCenterPage: true,
                          viewportFraction: 0.3),
                    ),
                  ),
                  if (MediaQuery.of(context).size.width >= 1100)
                    IconButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 500));
                      },
                      icon: const Icon(
                        MyFlutterApp.arrowCircleRight,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
