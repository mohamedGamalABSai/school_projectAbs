import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_system_abs/core/utils/app_routers.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';

class SecondSectionHomeViewHeader extends StatelessWidget {
  const SecondSectionHomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Text(
            "News and events",
            style: AppStyles.styleBold48(context),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kReadMoreView);
            },
            child: Text(
              "Read more",
              style: _getTextStyle(context),
            ),
          )
        ],
      ),
    );
  }
  TextStyle _getTextStyle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 1100) {
      return AppStyles.styleBold32(context).copyWith(fontSize: 26); // Use styleRegular20 for smaller screens
    } else {
      return AppStyles.styleBold32(context); // Use styleRegular32 for larger screens
    }
  }
}
