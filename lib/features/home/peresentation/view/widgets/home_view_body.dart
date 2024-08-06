import 'package:flutter/material.dart';

import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile_layout.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/tab_and_web_layout.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return const TabAndWebLayout();
      } else {
        return const MobileLayout();
      }
    });
  }
}
