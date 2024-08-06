import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/third_section_item.dart';

class ThirdSectionMobile extends StatelessWidget {
  const ThirdSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Quick Facts",
            style: AppStyles.styleBold20(context)
                .copyWith(color: AppColors.secondaryColor),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          color: AppColors.secondaryColor,
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            children: const [
              CustomThirdItem(
                image: 'assets/images/golden images/books.png',
                num: '12',
                subTitle: 'Library',
                subTitleFontSize: 14,
                numFontSize: 16,
              ),
              CustomThirdItem(
                image: 'assets/images/golden images/graduated boy.png',
                num: '+50000',
                subTitle: 'Students',
                subTitleFontSize: 14,
                numFontSize: 16,
              ),
              CustomThirdItem(
                image: 'assets/images/golden images/location.png',
                num: '+6',
                subTitle: 'Branches',
                subTitleFontSize: 14,
                numFontSize: 16,
              ),
              CustomThirdItem(
                image: 'assets/images/golden images/winner.png',
                num: '+5',
                subTitle: 'Awards',
                subTitleFontSize: 14,
                numFontSize: 16,
              ),
              CustomThirdItem(
                image: 'assets/images/golden images/winner.png',
                num: '+5',
                subTitle: 'Awards',
                subTitleFontSize: 14,
                numFontSize: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
