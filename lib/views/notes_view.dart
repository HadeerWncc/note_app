import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/views/widget/note_view_body.dart';
import 'package:note_app/views/widget/show_add_new_note.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled :true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNewNote();
              });
        },
        backgroundColor: primaryColor,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
