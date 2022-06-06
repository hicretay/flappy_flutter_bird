import 'package:flutter/material.dart';

class Bird extends StatelessWidget {
  final birdY;
  final double birdHeight;
  final double birdWidth;

  Bird({
    Key? key,
    this.birdY,
    required this.birdHeight,
    required this.birdWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, (2 * birdY + birdHeight) / (2 - birdHeight)),
      child: Image.asset(
        'assets/yellow_bird.png',
        width: 100,//MediaQuery.of(context).size.height * birdWidth / 2,
        height: 100,//MediaQuery.of(context).size.height * 3 / 4 * birdHeight / 2,
        fit: BoxFit.fill,
      ),
    );
  }
}
