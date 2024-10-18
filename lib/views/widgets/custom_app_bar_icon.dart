import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: IconButton(
            icon: Icon(
              icon,
              size: 28,
            ),
            color: Colors.blueGrey[100],
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
