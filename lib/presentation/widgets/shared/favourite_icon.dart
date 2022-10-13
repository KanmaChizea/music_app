import 'package:flutter/material.dart';
import 'package:musica/core/constants/colors.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: Colors.white.withOpacity(0.11))),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_outline_outlined,
          color: secondary,
          size: 20,
        ),
      ),
    );
  }
}
