import 'package:flutter/material.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/custom_nav_bar.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/first_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SliverToBoxAdapter(child: FirstSectionHomeView())],
    );
  }
}
