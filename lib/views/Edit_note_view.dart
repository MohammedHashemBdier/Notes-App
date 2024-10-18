import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar_icon.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({
    super.key,
    required this.note,
  });

  final NoteModel note;
  // إنشاء GlobalKey للوصول إلى الـ State الخاصة بـ EditNoteViewBody
  final GlobalKey<EditNoteViewBodyState> editNoteKey =
      GlobalKey<EditNoteViewBodyState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Edit Note',
        actions: CustomAppBarIcon(
          icon: FontAwesomeIcons.check,
          onPressed: () {
            // عند الضغط على زر الحفظ
            editNoteKey.currentState
                ?.saveNote(); // استدعاء دالة الحفظ من الـ State
          },
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
      body: EditNoteViewBody(
        key: editNoteKey, // تمرير الـ GlobalKey
        note: note,
      ),
    );
  }
}
