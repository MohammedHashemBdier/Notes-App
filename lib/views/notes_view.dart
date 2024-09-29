import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/notes_view_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.plus,
        ),
      ),
      appBar: notesViewAppBar(),
      body: const NotesListView(),
    );
  }
}
