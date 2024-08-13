import 'package:flutter/material.dart';
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
              context: context,
              builder: (context) {
                return const AddNewNote();
              });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color(0xff53ebd5),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
      body: const NoteViewBody(),
    );
  }
}


