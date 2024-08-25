import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  var noteBox = Hive.box<NoteModel>(knotesBox);
  List<NoteModel>? notes;
  getNotes(String? searchTitle) {
    notes = noteBox.values.toList();
    notes = notes!.reversed.toList();
    if (searchTitle != null && searchTitle != "") {
      notes = notes!
          .where(
            (n) => n.title.contains(searchTitle),
          )
          .toList();
    }
    emit(NotesSuccess());
  }
}
