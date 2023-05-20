import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/constants.dart';
import 'package:ice_cream_app/widgets/home_widgets/h_ice_list_item.dart';
import 'package:ice_cream_app/widgets/painters/h_ice_painter.dart';

class HIceList extends StatelessWidget {
  const HIceList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .28,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: iceCreams.length,
        itemBuilder: (contex, i) => Container(
          width: size.width * .42,
          margin: const EdgeInsets.only(right: 20),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: iceCreams[i].color,
            boxShadow: boxShadow,
          ),
          child: CustomPaint(
            painter: HIcePainter(),
            child: HIceListItem(iceCream: iceCreams[i], size: size),
          ),
        ),
      ),
    );
  }
}
