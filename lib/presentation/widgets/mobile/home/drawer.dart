import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/textstyles.dart';
import '../../../state management/navbar_cubit.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navItems = [
      "Home",
      "My_collections",
      "Radio",
      "Music_videos",
      "Profile",
      "Logout"
    ];
    return Drawer(
        backgroundColor: background,
        child: Column(
          children: [
            const DrawerHeader(child: SizedBox()),
            Expanded(
              child: ListView.builder(
                  itemCount: navItems.length,
                  itemBuilder: (context, index) {
                    final title = navItems[index].contains("_")
                        ? navItems[index].replaceFirst("_", " ")
                        : navItems[index];
                    return ListTile(
                      title: Text(title,
                          style: context.watch<NavBarCubit>().state == index
                              ? drawerItem.copyWith(color: Colors.white)
                              : drawerItem),
                      leading: context.watch<NavBarCubit>().state == index
                          ? WebsafeSvg.asset(
                              'icons/${navItems[index]}-active.svg')
                          : WebsafeSvg.asset('icons/${navItems[index]}.svg'),
                      onTap: () {
                        switch (navItems[index]) {
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
                    );
                  }),
            ),
          ],
        ));
  }
}
