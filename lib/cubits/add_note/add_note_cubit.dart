import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  Color color = const Color(0xFF607D8B);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(
      AddNoteLoding(),
    );
    try {
      var notsBox = Hive.box<NoteModel>(kNotsBox);
      await notsBox.add(note);
      emit(
        AddNoteSuccess(
          sMessage: "Note has been added",
        ),
      );
    } catch (e) {
      debugPrint(
        "Expansion is : ${e.toString()}",
      );
      emit(
        AddNoteFailure(
          eMessage: "Failed to add note",
        ),
      );
    }
  }
}
