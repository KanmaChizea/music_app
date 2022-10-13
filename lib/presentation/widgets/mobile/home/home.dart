import 'package:flutter/material.dart';
import 'package:musica/presentation/widgets/shared/hero_image.dart';
import 'package:musica/presentation/widgets/shared/topcharts.dart';

import '../../../../core/constants/textstyles.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeroImage(
          bigStateCondition: MediaQuery.of(context).size.width > 612,
          smallStateCondition: MediaQuery.of(context).size.width <= 612,
        ),
        const SizedBox(height: 42),
        Text('Top charts', style: heading2),
        const SizedBox(height: 16),
        TopChartSection()
      ],
    );
  }
}
