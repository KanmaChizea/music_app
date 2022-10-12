import 'package:flutter/material.dart';
import 'package:musica/presentation/widgets/home/nav_bar.dart';

import 'package:musica/core/constanrs/colors.dart';

import '../widgets/home/appbar.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 28),
        child: Column(
          children: [
            CustomAppBar(),
            Row(
              children: [NavBar()],
            ),
          ],
        ),
      ),
    );
  }
}
