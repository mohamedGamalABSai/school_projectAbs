import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';

class FourthItemMobile extends StatelessWidget {
  const FourthItemMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.navColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Adjust color and opacity
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // Adjust offset
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/images/image3.png"),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(
                    'Jane Doe',
                    style: AppStyles.styleRegular16(context),
                  ),
                  Text(
                    'Senior Designer',
                    style: AppStyles.styleRegular10(
                        context), // Adjust font size for better fit
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Egestas elit dui scelerisque ut eu purus aliquam vitae habitasse.',
                    style: AppStyles.styleRegular10(
                        context), // Adjust font size for better fit
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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
