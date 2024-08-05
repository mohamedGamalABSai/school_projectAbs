
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});
  static final Uri _instgramUrl = Uri.parse('https://www.instagram.com/');
  static final Uri _faceBookUrl = Uri.parse('https://www.facebook.com/');
  static final Uri _twitter = Uri.parse('https://x.com/?lang=en');
  static final Uri _linkedIn = Uri.parse('https://www.linkedin.com/');

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.facebook,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              _launchUrl(_faceBookUrl);
            },
          ),
        ),
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.twitter,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              _launchUrl(_twitter);
            },
          ),
        ),
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.instagram,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              _launchUrl(_instgramUrl);
            },
          ),
        ),
        Flexible(
          child: IconButton(
            icon: const Icon(
              FontAwesomeIcons.linkedin,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              _launchUrl(_linkedIn);
            },
          ),
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
