import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musica/presentation/screens/mainscreen.dart';
import 'package:musica/presentation/screens/mainscreen_mobile.dart';
import 'package:musica/presentation/widgets/responsive.dart';

import 'presentation/state management/navbar_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavBarCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Musica',
        home: Responsive(
            mobile: MainScreenMobile(),
            tablet: MainScreenWeb(),
            desktop: MainScreenWeb()),
      ),
    );
  }
}
