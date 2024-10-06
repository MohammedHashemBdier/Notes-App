import 'package:flutter/material.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
  });
  final Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey[100],
      ),
      child: isLoading
          ? const SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.blueGrey,
              ),
            )
          : const Text(
              'Add Note',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
