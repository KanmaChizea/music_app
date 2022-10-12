import 'package:flutter/material.dart';

import 'nav_bar_section.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      child: Column(
        children: const [
          NavBarSection(
            iconList: ["Home", "My_collections", "Radio", "Music_videos"],
            isTop: true,
          ),
          SizedBox(height: 20),
          NavBarSection(
            iconList: ["Profile", "Logout"],
            isTop: false,
          )
        ],
      ),
    );
  }
}
