import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var notsBox = Hive.box<NoteModel>(kNotsBox);

      emit(
        NotesSuccess(
          notes: notsBox.values.toList(),
        ),
      );
    } catch (e) {
      debugPrint(
        "Expansion is : ${e.toString()}",
      );
      emit(
        NotesFailure(
          errMessage: "Failed to Loading notes",
        ),
      );
    }
  }
}
