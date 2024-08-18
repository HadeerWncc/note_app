import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget/edit_note_b0dy.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  static String id = 'EditNoteView';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(note: note,),
    );
  }
}
