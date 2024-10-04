import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(
      AddNoteLoding(),
    );
    try {
      var notsBox = Hive.box<NoteModel>(kNotsBox);
      await notsBox.add(note);
      emit(
        AddNoteSuccess(
          message: "Note has been added",
        ),
      );
    } catch (e) {
      debugPrint(
        e.toString(),
      );
      emit(
        AddNoteFailure(
          message: "Failed to add note",
        ),
      );
    }
  }
}
