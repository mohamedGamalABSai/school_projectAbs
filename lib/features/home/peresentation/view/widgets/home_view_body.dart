import 'package:flutter/material.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/custom_nav_bar.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/first_section.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/fourth_section_home.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/second_section.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/third_section_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: FirstSectionHomeView()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
        SliverToBoxAdapter(child: SecondSectionHomeView()),
        SliverToBoxAdapter(child: ThirdSectionHomeView()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
        SliverToBoxAdapter(child: FourthSectionHome()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
      ],
    );
  }
}
