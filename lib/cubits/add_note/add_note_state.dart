part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoding extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {
  final String sMessage;

  AddNoteSuccess({
    required this.sMessage,
  });
}

final class AddNoteFailure extends AddNoteState {
  final String eMessage;

  AddNoteFailure({
    required this.eMessage,
  });
}
