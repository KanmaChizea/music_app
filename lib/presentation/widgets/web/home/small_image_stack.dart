import 'package:flutter/material.dart';

class SmallImageStack extends StatelessWidget {
  const SmallImageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 20,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset('images/Ellipse2.png'),
          ),
          Positioned(
            left: 12,
            child: Image.asset('images/Ellipse3.png'),
          ),
          Positioned(
            left: 24,
            child: Image.asset('images/Ellipse4.png'),
          ),
          Positioned(
            left: 36,
            child: Image.asset('images/Ellipse5.png'),
          ),
          Positioned(
            left: 48,
            child: Image.asset('images/Ellipse6.png'),
          ),
        ],
      ),
    );
  }
}
