import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class AddNoteColorsListView extends StatefulWidget {
  const AddNoteColorsListView({
    super.key,
  });

  @override
  State<AddNoteColorsListView> createState() => _AddNoteColorsListViewState();
}

class _AddNoteColorsListViewState extends State<AddNoteColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    kColors[currentIndex];
                setState(() {});
              },
              child: ColorItem(
                isSelected: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
