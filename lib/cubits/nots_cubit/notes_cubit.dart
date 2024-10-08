import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes(String mesaage) {
    var notsBox = Hive.box<NoteModel>(kNotsBox);
    notes = notsBox.values.toList();
    emit(
      NotesSuccess(
        mesaage: mesaage,
      ),
    );
  }
}
