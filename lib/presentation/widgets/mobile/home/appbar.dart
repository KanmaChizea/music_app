import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musica/core/constants/colors.dart';
import 'package:musica/core/constants/textstyles.dart';
import 'package:musica/presentation/state%20management/mobile_appbar_handler.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppbarHandlingCubit(),
        child: BlocBuilder<AppbarHandlingCubit, AppbarState>(
            builder: (context, state) {
          switch (state) {
            case AppbarState.normal:
              return const NormalAppbar();
            case AppbarState.search:
              return const SearchAppbar();
          }
        }));
  }
}

class NormalAppbar extends StatelessWidget {
  const NormalAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        const SizedBox(width: 24),
        WebsafeSvg.asset('icons/logo.svg'),
        const Spacer(),
        IconButton(
            onPressed: () => context.read<AppbarHandlingCubit>().toggle(),
            icon: const Icon(Icons.search, color: onAppBar, size: 30))
      ],
    );
  }
}

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fieldBorder =
        OutlineInputBorder(borderRadius: BorderRadius.circular(32));
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search, color: background),
          hintText: 'Search',
          hintStyle: hintStyle.copyWith(color: Colors.grey.shade500),
          suffixIcon: IconButton(
              onPressed: () => context.read<AppbarHandlingCubit>().toggle(),
              icon: Icon(Icons.close, color: Colors.grey.shade500)),
          enabledBorder: fieldBorder,
          focusedBorder: fieldBorder),
    );
  }
}
