import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/custom_drawer_item.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/custom_mobile_detailes_icon.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: AppColors.whiteColor,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.orangeColor,
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                children: [
                  Text(
                    "Log In",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(FontAwesomeIcons.angleRight)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomDrawerItem(
              label: 'Home',
              index: 0,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomDrawerItem(
              label: 'About',
              index: 1,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomDrawerItem(
              label: 'Education',
              index: 2,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomDrawerItem(
              label: 'Student Life',
              index: 3,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomDrawerItem(
              label: 'Admissions',
              index: 4,
            ),
          ),
          const Spacer(),
          Container(
            color: AppColors.secondaryColor,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  CustomDetailesIcon(
                    icon: FontAwesomeIcons.envelope,
                    label: "Info@alkhalil.edu",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomDetailesIcon(
                    icon: Icons.phone_enabled_outlined,
                    label: "+0201020304050",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomDetailesIcon(
                    icon: Icons.phone_enabled_outlined,
                    label: "+0233445566",
                  ),
                  SizedBox(
                    height: 28,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
