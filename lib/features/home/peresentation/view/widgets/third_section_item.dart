import 'package:flutter/material.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/core/utils/function.dart';

class CustomThirdItem extends StatelessWidget {
  const CustomThirdItem(
      {super.key,
      required this.image,
      required this.num,
      required this.subTitle});
  final String image, num, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: ScreenSize.screeenHeight(context) * 0.1,
          width: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(image),
          )),
        ),
        const SizedBox(height: 10),
        Flexible(
          child: Text(
            num,
            style: AppStyles.styleBold20(context),
          ),
        ),
        Flexible(
          child: Text(subTitle,
              style: AppStyles.styleRegular20(context)
                  .copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
