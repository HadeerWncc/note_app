import 'package:flutter/material.dart';
import 'package:note_app/views/widget/customer_app_bar.dart';
import 'package:note_app/views/widget/list_of_notes.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: const Column(
        children: [
          CustomerAppBar(),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
