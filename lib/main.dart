import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  // await Hive.initFlutter();
  // Hive.registerAdapter(NoteModelAdapter());
  // await Hive.openBox<NoteModel>(knotesBox);
  // Bloc.observer = SimpleBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  var box = await Hive.openBox<NoteModel>(knotesBox);

  // Save a test note
  // await box.put('testNoteKey',
  //     NoteModel(title: 'Test Note', subTitle: '', date: '', color: 1));

  // Retrieve the test note
  var retrievedNote = box.get('testNoteKey');
  print(retrievedNote?.title); // Should print: Test Note

  Bloc.observer = SimpleBlocObserver();
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
        // routes: {
        //   EditNoteView.id : (context) => const EditNoteView(),
        // },
      ),
    );
  }
}
