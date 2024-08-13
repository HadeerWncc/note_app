import 'package:flutter/material.dart';
import 'package:note_app/views/widget/customer_app_bar.dart';
import 'package:note_app/views/widget/list_of_notes.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          CustomerAppBar(textTitle: 'Note',icon: Icon(Icons.search),),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
