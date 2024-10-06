import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_app_bar_icon.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[900],
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            elevation: 10,
            backgroundColor: Colors.blueGrey[900],
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: Icon(
          FontAwesomeIcons.plus,
          color: Colors.blueGrey[100],
        ),
      ),
      appBar: customAppBar(
        title: 'Notes',
        actions: const CustomAppBarIcon(
          icon: FontAwesomeIcons.magnifyingGlass,
        ),
        leading: null,
      ),
      body: const NotesListView(),
    );
  }
}
