import 'package:flutter/material.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/core/widgets/custom_button.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/text_container.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: ScreenSize.screeenWidth(context) * 0.1,
              height: ScreenSize.screeenWidth(context) * 0.1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/logo/logo.png"),
              )),
            ),
            const SizedBox(
              width: 32,
            ),
            const TextContainer(),
            const SizedBox(
              width: 32,
            ),
            CustomButton(
              width: ScreenSize.screeenWidth(context) * 0.12,
              labelName: "Log in",
              isBold: true,
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
