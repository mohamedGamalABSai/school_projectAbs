import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';

class FirstSectionHomeView extends StatelessWidget {
  const FirstSectionHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.secondaryColor
              ),
        )
      ],
    );
  }
}
