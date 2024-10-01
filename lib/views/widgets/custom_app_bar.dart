import 'package:flutter/material.dart';

AppBar customAppBar({
  required String title,
  Widget? actions,
  Widget? leading,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.blueGrey[100],
        fontSize: 28,
      ),
    ),
    actions: actions != null ? [actions] : null,
    leading: leading,
  );
}
