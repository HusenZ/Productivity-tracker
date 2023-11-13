import 'package:flutter/material.dart';
import 'package:productivity_tracker/widgets/cards.dart';

List<Widget> cards = [
  CustomCard(
    colors: const [
      Color.fromARGB(255, 255, 183, 0),
      Color.fromARGB(255, 255, 203, 59),
    ],
    task: 'Skill',
    callback: () {},
  ),
  CustomCard(
    colors: const [
      Color.fromARGB(255, 248, 95, 72),
      Color.fromARGB(255, 255, 136, 0),
    ],
    task: 'Financially',
    callback: () {},
  ),
  CustomCard(
    colors: const [
      Color.fromARGB(146, 252, 0, 96),
      Color.fromARGB(255, 251, 118, 154),
    ],
    task: 'Mentally',
    callback: () {},
  ),
];
