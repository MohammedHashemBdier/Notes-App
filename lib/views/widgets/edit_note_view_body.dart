import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Content',
              maxLines: 10,
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
