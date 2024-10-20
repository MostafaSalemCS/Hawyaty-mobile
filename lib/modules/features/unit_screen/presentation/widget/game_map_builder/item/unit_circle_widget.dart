import 'package:flutter/material.dart';

class UnitCircleWidget extends StatelessWidget {
  final int index;
  final String order;
  final Function(int index) onTap;

  const UnitCircleWidget(
      {super.key, required this.index, required this.order, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/drawable/map_vertical_point.png",
            fit: BoxFit.fitWidth,
            width: 50,
          ),
          Text(order, style: const TextStyle(color: Colors.black, fontSize: 15))
        ],
      ),
      onTap: () {
        debugPrint("Point $index");
        onTap(index);
      },
    );
  }
}
