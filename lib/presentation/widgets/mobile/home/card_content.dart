import 'package:flutter/material.dart';
import 'package:musica/presentation/widgets/shared/favourite_icon.dart';

import '../../../../core/constants/textstyles.dart';
import '../../../../data/models/music.dart';

class CardContentMobile extends StatelessWidget {
  const CardContentMobile({
    Key? key,
    required this.music,
  }) : super(key: key);
  final Music music;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 137,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 108,
                height: 99,
                child: Image.asset(
                  'images/${music.coverArt}.png',
                  fit: BoxFit.cover,
                ),
              ),
              const FavouriteIcon()
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          music.title,
          style: heading3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Text('${music.artist}\n\n',
            style: caption.copyWith(color: Colors.white.withOpacity(0.5))),
        Text(music.duration, style: subtitle)
      ],
    );
  }
}
