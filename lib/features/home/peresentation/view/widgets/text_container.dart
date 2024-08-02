import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/change_pages_view_model.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: ScreenSize.screeenWidth(context) * 0.7,
          // minWidth: ScreenSize.screeenWidth(context) * 0.6,
         ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: AppColors.navColor),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: CustomText(
              label: 'Home',
              index: 0,
            ),
          ),
          Flexible(
            child: CustomText(
              label: 'About',
              index: 1,
            ),
          ),
          Flexible(
            child: CustomText(
              label: 'Education',
              index: 2,
            ),
          ),
          Flexible(
            child: CustomText(
              label: 'Student Life',
              index: 3,
            ),
          ),
          Flexible(
            child: CustomText(
              label: 'Admissions',
              index: 4,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.label,
    required this.index,
  });
  final String label;
  final int index;
  @override
  Widget build(BuildContext context) {
    ChangePagesProvider changePagesProvider =
        Provider.of<ChangePagesProvider>(context);
    return GestureDetector(
      onTap: () {
        changePagesProvider.changePage(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: changePagesProvider.currentIndex == index
                ? AppStyles.styleBold18(context)
                : AppStyles.styleRegular18(context),
          ),
          changePagesProvider.currentIndex == index
              ? Container(
                constraints: BoxConstraints(maxWidth: 100),
                  decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(5)),
                  height: 5,
                )
              : Container(),
        ],
      ),
    );
  }
}
