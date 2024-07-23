import 'package:flutter/material.dart';
import 'package:school_system_abs/core/constant/app_colors.dart';
import 'package:school_system_abs/core/utils/function.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/custom_image_container.dart';
import 'package:school_system_abs/icons.dart';

class SeconSectionImages extends StatelessWidget {
  const SeconSectionImages({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      // height: ScreenSize.screeenHeight(context) * 0.55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
        
          CustomImageContainer(
            height: 0.5,
            borderContainerHeight: 0.25,
            maxLines: 4,
            imageHeight: 0.3,
          ),
          SizedBox(
            width: 32,
          ),
          ContainerColumn(),
          
        ],
      ),
    );
  }
}

class ContainerColumn extends StatelessWidget {
  const ContainerColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: ScreenSize.screeenHeight(context) * .25,
          child: const CustomImageContainer(
            height: 0.20,
            borderContainerHeight: 0.125,
            maxLines: 1,
            imageHeight: 0.125,
          ),
        ),
        SizedBox(
          height: ScreenSize.screeenHeight(context) * .25,
          child: const CustomImageContainer(
            height: 0.20,
            borderContainerHeight: 0.125,
            maxLines: 1,
            imageHeight: 0.125,
          ),
        ),
      ],
    );
  }
}
class TabContainerColumn extends StatelessWidget {
  const TabContainerColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: ScreenSize.screeenHeight(context) * .15,
          child: const CustomImageContainer(
            height: 0.1,
            borderContainerHeight: 0.05,
            maxLines: 1,
            imageHeight: 0.05,
          ),
        ),
        SizedBox(
          height: ScreenSize.screeenHeight(context) * .15,
          child: const CustomImageContainer(
            height: 0.1,
            borderContainerHeight: 0.075,
            maxLines: 1,
            imageHeight: 0.075,
          ),
        ),
      ],
    );
  }
}
