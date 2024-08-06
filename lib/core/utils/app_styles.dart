import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';

abstract class AppStyles {
  static TextStyle styleRegular20(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w200,
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  } static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: AppColors.orangeColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }
 static TextStyle styleRegular10(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular18(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular32(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold48(BuildContext context) {
    return TextStyle(
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 48),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold32(BuildContext context) {
    return TextStyle(
      color: AppColors.orangeColor,
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .7;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return width / 350;
  } else if (width < 1200) {
    return width / 1400;
  } else {
    return width / 1700;
  }
}
