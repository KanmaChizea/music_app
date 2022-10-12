import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NavBarSection extends StatelessWidget {
  final List<String> iconList;
  const NavBarSection({
    Key? key,
    required this.iconList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 18),
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: iconList.length,
            separatorBuilder: (context, index) => const SizedBox(height: 32),
            itemBuilder: (context, index) {
              return IconButton(
                  onPressed: () {},
                  icon: WebsafeSvg.asset("${iconList[index]}.svg"));
            }));
  }
}
