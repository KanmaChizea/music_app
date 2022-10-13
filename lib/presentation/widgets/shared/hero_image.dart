import 'dart:math';

import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'package:musica/presentation/widgets/responsive.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/textstyles.dart';
import '../web/home/small_image_stack.dart';

class HeroImage extends StatelessWidget {
  final bool bigStateCondition;
  final bool smallStateCondition;
  const HeroImage({
    Key? key,
    required this.bigStateCondition,
    required this.smallStateCondition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      decoration:
          BoxDecoration(color: blue, borderRadius: BorderRadius.circular(40)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Stack(
          children: [
            if (bigStateCondition)
              const Positioned(
                  right: 0,
                  child: Image(
                    image: AssetImage(
                      'images/line.png',
                    ),
                  )),
            if (smallStateCondition)
              Positioned(
                right: 0,
                top: -30,
                child: ClipRect(
                  child: Transform.rotate(
                      angle: pi / 2,
                      child: Image.asset(
                        'images/line.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 38, 0, 38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Currated playlist', style: caption),
                      const Spacer(),
                      Text('R & B Hits', style: heading),
                      const SizedBox(height: 6),
                      Text(
                          'All mine, Lie again, Petty call me everyday,\nOut of time, No love, Bad habit,\nand so much more',
                          style: subtitle),
                      const Spacer(),
                      Row(
                        children: [
                          const SmallImageStack(),
                          const SizedBox(width: 12),
                          WebsafeSvg.asset('icons/Heart.svg'),
                          const SizedBox(width: 8),
                          Text("33k Likes", style: caption)
                        ],
                      )
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context))
                  Expanded(
                    child: Image.asset(
                      'images/man.png',
                      fit: BoxFit.contain,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
