import 'package:flutter/material.dart';
import 'package:school_system_abs/core/widgets/fotter/fotter.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/fifth_section.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/first_section.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/fourth_section_home.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/second_section.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/six_section.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/web_and_tab/third_section_home_view.dart';

class TabAndWebLayout extends StatelessWidget {
  const TabAndWebLayout({
    super.key,
  });

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
        SliverToBoxAdapter(child: FifthSection()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
        SliverToBoxAdapter(child: SixSection()),
        SliverToBoxAdapter(child: Footer()),
      ],
    );
  }
}
