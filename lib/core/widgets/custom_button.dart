
import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color = AppColors.orangeColor,
    required this.labelName,
    this.textColor = Colors.white,
    this.onPressed,
    this.haveBorder = false,
    this.isBold = false,
    this.borderRadius = 15,
  });

  final Color color, textColor;
  final String labelName;
  final void Function()? onPressed;
  final bool haveBorder, isBold;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: haveBorder
                ? const BorderSide(
                    color: Colors.white) // Set border color to white
                : BorderSide.none, // No border
          ),
          elevation: 0,
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Text(
          labelName,
          style: isBold
              ? AppStyles.styleBold18(context).copyWith(
                  color: textColor,
                )
              : AppStyles.styleRegular18(context).copyWith(
                  color: textColor,
                ),
        ),
      ),
    );
  }
}
