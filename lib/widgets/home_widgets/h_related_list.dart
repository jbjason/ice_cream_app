import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_related_list_item.dart';

class HRelatedList extends StatelessWidget {
  const HRelatedList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .15,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: iceCreams.length,
        itemBuilder: (context, i) => Container(
          width: size.width * .7,
          margin: const EdgeInsets.only(right: 20),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: iceCreams[iceCreams.length - i - 1].color,
            boxShadow: boxShadow,
            borderRadius: BorderRadius.circular(18),
          ),
          child: HRelatedListItem(
              size: size, iceCream: iceCreams[iceCreams.length - i - 1]),
        ),
      ),
    );
  }
}
