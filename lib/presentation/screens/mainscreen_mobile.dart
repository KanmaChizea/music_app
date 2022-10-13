import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musica/core/constants/colors.dart';
import 'package:musica/presentation/state%20management/navbar_cubit.dart';
import 'package:musica/presentation/widgets/mobile/home/appbar.dart';
import 'package:musica/presentation/widgets/mobile/home/home.dart';

import '../widgets/mobile/home/drawer.dart';
import '../widgets/mobile/playlist/playlist.dart';

class MainScreenMobile extends StatelessWidget {
  const MainScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 24),
        child: Column(
          children: [
            const MobileAppbar(),
            const SizedBox(height: 26),
            BlocBuilder<NavBarCubit, int>(
              builder: (context, state) {
                if (state == 0) {
                  return const HomeMobile();
                } else {
                  return const PlaylistMobile();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
