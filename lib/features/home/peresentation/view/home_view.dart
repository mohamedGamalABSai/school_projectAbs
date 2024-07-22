import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/custom_nav_bar.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/change_pages_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ChangePagesProvider changePagesProvider =
        Provider.of<ChangePagesProvider>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const CustomNavBar(),
      body: changePagesProvider.pages[changePagesProvider.currentIndex],
    ));
  }
}
