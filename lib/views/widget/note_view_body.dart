import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widget/customer_app_bar.dart';
import 'package:note_app/views/widget/list_of_notes.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).getNotes(null);
    super.initState();
  }

  bool search = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          CustomerAppBar(
            onPressed: () {
              search = true;
              setState(() {});
            },
            textTitle: 'Note',
            icon: const Icon(Icons.search),
            inputSearch: search,
          ),
          const Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
