import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final List<Color> colors;
  final String task;
  final VoidCallback? callback;
  const CustomCard({
    Key? key,
    required this.colors,
    required this.task,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/skills');
        },
        child: Container(
          height: 170,
          width: 140,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Text(
                  task,
                  style: GoogleFonts.alata(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
