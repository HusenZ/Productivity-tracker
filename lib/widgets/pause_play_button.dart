import 'package:flutter/material.dart';

class PausePlayButton extends StatefulWidget {
  final VoidCallback? playCallback;
  final VoidCallback? pauseCallback;
  const PausePlayButton({
    Key? key,
    required this.playCallback,
    required this.pauseCallback,
  }) : super(key: key);

  @override
  State<PausePlayButton> createState() => _PausePlayButtonState();
}

class _PausePlayButtonState extends State<PausePlayButton> {
  String _playPauseController = 'pause';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _playPauseController =
              _playPauseController == 'play' ? 'pause' : 'play';
        });
        widget.playCallback;
        if (_playPauseController == 'play') {
          widget.playCallback?.call();
        } else {
          widget.pauseCallback?.call();
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey,
          ),
          child: Center(
            child: _playPauseController == 'play'
                ? const Icon(Icons.play_arrow)
                : const Icon(Icons.pause),
          ),
        ),
      ),
    );
  }
}
