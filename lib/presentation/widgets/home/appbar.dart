import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../core/constanrs/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textFieldBorder = UnderlineInputBorder(borderSide: BorderSide.none);
    return Row(
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
              hintStyle: GoogleFonts.quicksand(
                  fontSize: 14, fontWeight: FontWeight.w600, color: onAppBar),
              icon: const Icon(Icons.search, color: onAppBar),
              filled: false,
              enabledBorder: textFieldBorder,
              focusedBorder: textFieldBorder),
        ))
      ],
    );
  }
}
