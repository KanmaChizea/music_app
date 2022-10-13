import 'package:flutter/material.dart';

import '../../../../core/constants/textstyles.dart';
import '../../../../data/models/music.dart';
import '../../shared/favourite_icon.dart';

class CardContentWeb extends StatelessWidget {
  final Music music;
  const CardContentWeb({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('images/${music.coverArt}.png'),
      trailing: const FavouriteIcon(),
      title: Text(
        music.title,
        style: heading3,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: RichText(
          text: TextSpan(
              text: '${music.artist}\n',
              style: caption.copyWith(color: Colors.white.withOpacity(0.5)),
              children: [TextSpan(text: music.duration, style: caption)])),
    );
  }
}
