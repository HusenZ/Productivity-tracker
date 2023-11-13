import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:productivity_tracker/widgets/pause_play_button.dart';
import 'package:productivity_tracker/widgets/time_widget.dart';

class SkilsPomo extends StatelessWidget {
  const SkilsPomo({super.key});

  @override
  Widget build(BuildContext context) {
    final CountDownController controller = CountDownController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircularTimeWidget(
              currentTime: 25 * 60,
              controller: controller,
            ),
            const SizedBox(
              height: 23,
            ),
            PausePlayButton(
              pauseCallback: () {
                controller.pause();
              },
              playCallback: () {
                controller.resume();
              },
            ),
          ],
        ),
      ),
    );
  }
}
