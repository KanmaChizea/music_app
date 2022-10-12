import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musica/core/constants/textstyles.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../../core/constants/colors.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textFieldBorder = UnderlineInputBorder(borderSide: BorderSide.none);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WebsafeSvg.asset('icons/logo.svg'),
          const SizedBox(width: 36),
          Expanded(
              child: TextField(
            cursorColor: Colors.white,
            cursorHeight: 28,
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: hintStyle,
                icon: const Icon(Icons.search, color: onAppBar),
                filled: false,
                enabledBorder: textFieldBorder,
                focusedBorder: textFieldBorder),
          ))
        ],
      ),
    );
  }
}
