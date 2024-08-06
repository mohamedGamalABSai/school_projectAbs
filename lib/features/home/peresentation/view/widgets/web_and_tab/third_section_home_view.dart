import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/third_section_item.dart';

class ThirdSectionHomeView extends StatelessWidget {
  const ThirdSectionHomeView({super.key});

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
              "Quick Facts",
              style: AppStyles.styleBold48(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: ScreenSize.screeenHeight(context) * 0.35,
            color: AppColors.secondaryColor,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomThirdItem(
                  image: 'assets/images/golden images/books.png',
                  num: '12',
                  subTitle: 'Library',
                ),
                CustomThirdItem(
                  image: 'assets/images/golden images/graduated boy.png',
                  num: '+50000',
                  subTitle: 'Students',
                ),
                CustomThirdItem(
                  image: 'assets/images/golden images/location.png',
                  num: '+6',
                  subTitle: 'Branches',
                ),
                CustomThirdItem(
                  image: 'assets/images/golden images/winner.png',
                  num: '+5',
                  subTitle: 'Awards',
                ),
                CustomThirdItem(
                  image: 'assets/images/golden images/winner.png',
                  num: '+5',
                  subTitle: 'Awards',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
