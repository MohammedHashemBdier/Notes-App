import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueGrey[100],
            child: CircleAvatar(
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
          );
  }
}
