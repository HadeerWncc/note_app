import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  getNotes() {
    var noteBox = Hive.box<NoteModel>(knotesBox);
    notes = noteBox.values.toList();
    notes = notes!.reversed.toList();
    emit(NotesSuccess());
    // try {
    //   // var noteBox = Hive.box<NoteModel>(knotesBox);
    //   // var notes = noteBox.values.toList();
    //   emit(NotesSuccess(notes: notes));
    // } catch (e) {
    //   emit(NotesFailure(errorMsg: e.toString()));
    // }
  }
}
