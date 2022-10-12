import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'package:musica/core/constants/colors.dart';
import 'package:musica/presentation/state%20management/navbar_cubit.dart';

class NavBarSection extends StatelessWidget {
  final List<String> iconList;
  final bool isTop;
  const NavBarSection({
    Key? key,
    required this.iconList,
    required this.isTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 15),
        decoration: const BoxDecoration(
            color: darkAlt,
            borderRadius: BorderRadius.all(Radius.circular(32))),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (iconList[index]) {
                  case "Home":
                    context.read<NavBarCubit>().goHome();

                    break;
                  case "My_collections":
                    context.read<NavBarCubit>().goPlaylist();
                    break;
                  default:
                    null;
                }
              },
              child: WebsafeSvg.asset(
                isTop && context.watch<NavBarCubit>().state == index
                    ? 'icons/${iconList[index]}-active.svg'
                    : 'icons/${iconList[index]}.svg',
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 32);
          },
          itemCount: iconList.length,
        ));
  }
}
