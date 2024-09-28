import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

AppBar notesViewAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: const Text(
      'Notes',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    ),
    actions: const [
      CustomSearchIcon(),
    ],
  );
}
