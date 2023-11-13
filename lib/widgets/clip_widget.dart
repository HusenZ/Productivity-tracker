import 'package:flutter/material.dart';

class ClipBottomWidget extends StatelessWidget {
  const ClipBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50.0),
        topRight: Radius.zero,
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
      ),
    );
  }
}
