import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 24,
        top: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Note Title',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Text(
                'Note Subtitle',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            'May 20, 2024',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
