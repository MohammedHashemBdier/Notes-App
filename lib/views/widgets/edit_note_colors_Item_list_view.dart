import 'package:flutter/material.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = kColors[currentIndex].value;
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
