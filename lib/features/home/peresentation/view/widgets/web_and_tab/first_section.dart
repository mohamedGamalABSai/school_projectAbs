import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/core/widgets/custom_button.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/scroll_to_the_end_view_model.dart';

class FirstSectionHomeView extends StatelessWidget {
  const FirstSectionHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      width: ScreenSize.screeenWidth(context) * 1,
      height: ScreenSize.screeenHeight(context) * 0.75,
      child: Stack(
        children: [
          Container(
            width: ScreenSize.screeenWidth(context) * 1,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/images/Mask group.jpg"),
              ),
            ),
          ),
          Container(
            width: ScreenSize.screeenWidth(context) * 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.secondaryColor,
                  AppColors.secondaryColor.withOpacity(0.9),
                  AppColors.secondaryColor.withOpacity(0.7),
                  AppColors.secondaryColor.withOpacity(0.6),
                  Colors.transparent,
                  Colors.transparent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          const Positioned(
            left: 82,
            top: 147,
            bottom: 147,
            child: FirstSectionItem(),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Provider.of<ScrollControllerProvider>(context, listen: false)
                      .scrollToEnd();
                },
                child: const Icon(
                  FontAwesomeIcons.anglesDown,color: AppColors.orangeColor,size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstSectionItem extends StatelessWidget {
  const FirstSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.screeenHeight(context) * 0.35,
      width: ScreenSize.screeenWidth(context) * 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                style: _getTextStyle(context),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 120),
              child: CustomButton(
                onPressed: () {},
                labelName: "Apply Now",
                isBold: true,
                borderRadius: 8,
                width: ScreenSize.screeenWidth(context) * 0.15,
                height: ScreenSize.screeenHeight(context) * 0.07,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 1100) {
      return AppStyles.styleRegular32(context)
          .copyWith(fontSize: 26); // Use styleRegular20 for smaller screens
    } else {
      return AppStyles.styleRegular32(
          context); // Use styleRegular32 for larger screens
    }
  }
}
