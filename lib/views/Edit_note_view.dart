import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar_icon.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Edit Note',
        actions: const CustomAppBarIcon(
          icon: FontAwesomeIcons.check,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueGrey[100],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const EditNoteViewBody(),
    );
  }
}
