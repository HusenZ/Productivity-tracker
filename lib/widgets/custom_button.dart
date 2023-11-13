import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  const CustomButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Todo\'s',
            style: GoogleFonts.alata(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          IconButton.filled(
            icon: const Icon(Icons.add),
            onPressed: callback,
          ),
        ],
      ),
    );
  }
}
