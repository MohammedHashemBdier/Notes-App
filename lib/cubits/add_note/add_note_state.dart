part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoding extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {
  final String message;

  AddNoteSuccess({
    required this.message,
  });
}

final class AddNoteFailure extends AddNoteState {
  final String message;

  AddNoteFailure({
    required this.message,
  });
}
