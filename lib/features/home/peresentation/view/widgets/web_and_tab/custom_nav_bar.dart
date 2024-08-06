import 'package:flutter/material.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/core/widgets/custom_button.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/text_container.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: ScreenSize.screeenWidth(context) * 0.1,
                height: ScreenSize.screeenWidth(context) * 0.1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/logo/logo.png"),
                  ),
                ),
              ),
              const TextContainer(),
              Flexible(
                child: CustomButton(
                  width: ScreenSize.screeenWidth(context) * 0.12,
                  labelName: "Log in",
                  isBold: true,
                  onPressed: () {},
                ),
              ),
            ],
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 16, right: 16),
            child: Row(
              children: [
                Container(
                  width: ScreenSize.screeenWidth(context) * 0.2,
                  height: ScreenSize.screeenWidth(context) * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/images/logo/logo.png"),
                    ),
                  ),
                ),
                const Spacer(),
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
