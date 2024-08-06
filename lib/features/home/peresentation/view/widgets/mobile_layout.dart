import 'package:flutter/material.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/fifth_section_mobile.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/first_section_mobile.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/fourth_section_mobile.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/second_section_mobile.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/sixth_section_mobile.dart';
import 'package:school_system_abs/features/home/peresentation/view/widgets/mobile/third_section_mobile.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: FirstSectionMobile(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 42,
          ),
        ),
        SliverToBoxAdapter(
          child: SeconSectionMobile(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 42,
          ),
        ),
        SliverToBoxAdapter(
          child: ThirdSectionMobile(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 42,
          ),
        ),
        SliverToBoxAdapter(
          child: FourthSectionMobile(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: FifthSectionMobile(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 42,
          ),
        ),
        SliverToBoxAdapter(child: SixthSectionMobile())
      ],
    );
  }
}
