import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import 'package:productivity_tracker/utils/time_methods.dart';

class CircularTimeWidget extends StatelessWidget {
  final int currentTime;
  final CountDownController controller;
  const CircularTimeWidget({
    Key? key,
    required this.currentTime,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      controller: controller,
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      duration: currentTime,
      ringGradient: const LinearGradient(
        colors: [
          Colors.yellow,
          Colors.orange,
        ],
      ),
      fillColor: Colors.grey,
      ringColor: Colors.orangeAccent,
      strokeWidth: 14.0,
      autoStart: false,
      timeFormatterFunction: (defaultFormatterFunction, duration) {
        return formatTime(duration.inSeconds);
      },
    );
  }
}
