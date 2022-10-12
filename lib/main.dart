import 'package:flutter/material.dart';
import 'package:musica/presentation/screens/home.dart';
import 'package:musica/presentation/widgets/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musica',
      home: Responsive(
          mobile: Container(), tablet: Container(), desktop: HomeScreenWeb()),
    );
  }
}
