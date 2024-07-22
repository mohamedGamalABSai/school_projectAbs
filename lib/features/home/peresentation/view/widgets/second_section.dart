import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_routers.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/custom_image_container.dart';

class SecondSectionHomeView extends StatelessWidget {
  const SecondSectionHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      width: ScreenSize.screeenWidth(context) * 1,
      height: ScreenSize.screeenHeight(context) * 1,
      child: const Column(
        children: [
          SecondSectionHomeViewHeader(),
          CutomImageContainer(
            height: 0.5,
          )
        ],
      ),
    );
  }
}

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
              style: AppStyles.styleBold32(context),
            ),
          )
        ],
      ),
    );
  }
}
