import 'package:flutter/material.dart';

import 'package:musica/presentation/widgets/responsive.dart';

import '../../../core/constants/colors.dart';
import '../../../data/data.dart';
import '../mobile/home/card_content.dart';
import '../web/home/card_content.dart';

class TopChartSection extends StatelessWidget {
  const TopChartSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isMobile(context) ? 254 : 373,
      child: ListView.separated(
        scrollDirection:
            Responsive.isMobile(context) ? Axis.horizontal : Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (context, index) =>
            SizedBox(height: Responsive.isMobile(context) ? 17 : 12),
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: darkAlt,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
              child: Responsive.isMobile(context)
                  ? CardContentMobile(music: topCharts[index])
                  : CardContentWeb(music: topCharts[index]),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
