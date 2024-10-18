import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/nots_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => EditNoteViewBodyState();
}

class EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  // دالة لحفظ التعديلات
  void saveNote() {
    // التحقق من القيم المُعدّلة وحفظها في النموذج
    widget.note.title = title ?? widget.note.title;
    widget.note.subTitle = content ?? widget.note.subTitle;
    widget.note.save();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes("Note Was edited");
    Navigator.pop(context);
    // يمكنك تنفيذ أي عملية حفظ أخرى هنا (مثلاً تخزين في قاعدة البيانات)
    debugPrint(
        'Note Saved: Title - ${widget.note.title}, Content - ${widget.note.subTitle}');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 24,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              initialValue: widget.note.title, // عرض القيمة الحالية
              onChanged: (value) {
                title = value;
              },
              hintText: "title",
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              initialValue: widget.note.subTitle, // عرض القيمة الحالية
              onChanged: (value) {
                content = value;
              },
              hintText: "content",
              maxLines: 10,
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
