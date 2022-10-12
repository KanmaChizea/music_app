import 'package:flutter/material.dart';

import 'nav_bar_section.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavBarSection(
          iconList: ["Home", "playlist", "radio", "videos"],
        )
      ],
    );
  }
}
