// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants/strings.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchData() {
    var noteBox = Hive.box<NoteModel>(hiveBox);

    notes = noteBox.values.toList();
    if (notes!.isEmpty) {
      emit(NotesEmpty());
    } else {
      emit(NotesSuccess());
    }
  }
}
