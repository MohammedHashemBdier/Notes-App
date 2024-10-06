import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteLoding) {
          } else if (state is AddNoteSuccess) {
            Navigator.pop(context);
            debugPrint(state.sMessage);
          } else if (state is AddNoteFailure) {
            debugPrint(state.eMessage);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: AbsorbPointer(
              absorbing: state is AddNoteLoding ? true : false,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
