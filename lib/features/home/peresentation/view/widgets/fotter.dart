import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenSize.screeenHeight(context) * 0.6,
        color: AppColors.secondaryColor,
        child: Row(
          children: [
            SizedBox(
              width: ScreenSize.screeenWidth(context) * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      style: AppStyles.styleRegular20(context)
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone_android_outlined,
                        color: AppColors.whiteColor,
                      ),
                      Text(
                        "+0201020304050",
                        style: AppStyles.styleRegular20(context)
                            .copyWith(color: AppColors.whiteColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.phone_android_outlined,
                        color: AppColors.whiteColor,
                      ),
                      Text(
                        "+0233445566",
                        style: AppStyles.styleRegular20(context)
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.mail,
                        color: AppColors.whiteColor,
                      ),
                      Text(
                        "+0233445566",
                        style: AppStyles.styleRegular20(context)
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                  Container(
                    width: ScreenSize.screeenWidth(context) * 0.25,
                    height: ScreenSize.screeenHeight(context) * 0.2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage("assets/images/images/image3.png"))),
                  ),
                  const SocialMediaRow()
                ],
              ),
            ),
            const Column()
          ],
        ));
  }
}

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});
  static final Uri _instgramUrl = Uri.parse('https://www.instagram.com/');
  static final Uri _faceBookUrl = Uri.parse('https://www.facebook.com/');
  static final Uri _twitter = Uri.parse('https://x.com/?lang=en');
  static final Uri _linkedIn = Uri.parse('https://www.linkedin.com/');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.facebook,
            color: AppColors.whiteColor,
          ),
          onPressed: () {
            _launchUrl(_faceBookUrl);
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.twitter,
            color: AppColors.whiteColor,
          ),
          onPressed: () {
            _launchUrl(_twitter);
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.instagram,
            color: AppColors.whiteColor,
          ),
          onPressed: () {
            _launchUrl(_instgramUrl);
          },
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.linkedin,
            color: AppColors.whiteColor,
          ),
          onPressed: () {
            _launchUrl(_linkedIn);
          },
        ),
      ],
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
