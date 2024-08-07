import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/core/widgets/custom_button.dart';
import 'package:school_system_abs/core/widgets/custom_input_field.dart';
import 'package:school_system_abs/core/widgets/fotter/map_section.dart';
import 'package:school_system_abs/core/widgets/fotter/social_media_row.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenSize.screeenWidth(context) * 1,
        height: ScreenSize.screeenHeight(context) * 0.7,
        color: AppColors.secondaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: ScreenSize.screeenWidth(context) * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: AppColors.whiteColor),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone_enabled_outlined,
                          color: AppColors.whiteColor,
                          weight: 2,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "+0201020304050",
                          style: AppStyles.styleRegular16(context)
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.phone_enabled_outlined,
                          color: AppColors.whiteColor,
                          weight: 2,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "+0233445566",
                          style: AppStyles.styleRegular16(context)
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.envelope,
                          color: AppColors.whiteColor,
                          weight: 2,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Info@alkhalil.edu",
                          style: AppStyles.styleRegular16(context)
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const MapsSection(width: 0.4,),
                    const SizedBox(
                      height: 17,
                    ),
                    Flexible(child: const SocialMediaRow()),
                    const Spacer(),
                    Expanded(
                      child: Text(
                        "© all copy rights are reserved and created to ASB.AI Technology ",
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  width: ScreenSize.screeenWidth(context) * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: ScreenSize.screeenWidth(context) * 0.13,
                        height: ScreenSize.screeenWidth(context) * 0.13,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/logo/logo2.png",
                                ),
                                fit: BoxFit.fill)),
                      ),
                       CustomInputField(
                        labelText: "Email Address",
                        hintText: "Email Address",
                        backgroundColor: AppColors.navColor,
                        minLines: 1,
                        labelDisplay: false,
                        isReq: true,height: ScreenSize.screeenHeight(context) * 0.08,
                        hintColor: AppColors.greyColor,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInputField(
                        height: ScreenSize.screeenHeight(context) * 0.15,
                        labelText: "Message",
                        hintText: "Message",
                        isReq: false,
                        backgroundColor: AppColors.navColor,
                        isScrollable: true,
                        maxLines: 3,
                        labelDisplay: false,
                        hintColor: AppColors.greyColor,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButton(
                        width: ScreenSize.screeenWidth(context) * 0.3,
                        height: ScreenSize.screeenHeight(context) * 0.07,
                        labelName: "send",
                        isBold: true,
                        onPressed: () {},
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
