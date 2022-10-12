import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musica/presentation/widgets/web/home/home.dart';
import 'package:musica/presentation/widgets/web/home/nav_bar.dart';

import 'package:musica/core/constants/colors.dart';
import 'package:musica/presentation/widgets/web/playlist/playlist.dart';

import '../state management/navbar_cubit.dart';
import '../widgets/web/home/appbar.dart';

class MainScreenWeb extends StatelessWidget {
  const MainScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(children: [
        const WebAppBar(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const NavBar(),
                Expanded(child: BlocBuilder<NavBarCubit, int>(
                  builder: (context, state) {
                    if (state == 0) {
                      return const HomeWeb();
                    } else {
                      return const PlaylistWeb();
                    }
                  },
                ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
