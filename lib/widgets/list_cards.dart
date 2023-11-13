import 'package:flutter/material.dart';
import 'package:productivity_tracker/utils/list_utils.dart';

class ListOfCards extends StatelessWidget {
  const ListOfCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
      child: ListView.builder(
        itemCount: cards.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: cards[index],
          );
        },
      ),
    );
  }
}
