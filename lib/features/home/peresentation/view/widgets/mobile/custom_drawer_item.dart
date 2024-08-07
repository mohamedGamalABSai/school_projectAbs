import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/app_styles.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/change_pages_view_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.label,
    required this.index,
  });
  final String label;
  final int index;
  @override
  Widget build(BuildContext context) {
    ChangePagesProvider changePagesProvider =
        Provider.of<ChangePagesProvider>(context);
    return GestureDetector(
      onTap: () {
        changePagesProvider.changePage(index);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style:
                AppStyles.styleRegular12(context).copyWith(color: Colors.black),
          ),
          changePagesProvider.currentIndex == index
              ? Container(
                  decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(5)),
                  height: 5,
                )
              : Container(),
        ],
      ),
    );
  }
}
