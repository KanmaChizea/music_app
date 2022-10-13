import 'package:flutter/material.dart';
import 'package:musica/presentation/widgets/responsive.dart';

import '../../../../core/constants/textstyles.dart';
import '../../shared/hero_image.dart';
import '../../shared/topcharts.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [HeroSection()],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 3,
          child: HeroImage(
            bigStateCondition: Responsive.isDesktop(context),
            smallStateCondition: Responsive.isTablet(context),
          )),
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Top charts', style: heading2),
              const SizedBox(height: 14),
              const TopChartSection()
            ],
          ),
        ),
      )
    ]);
  }
}
