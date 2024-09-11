import 'package:caretutors/models/notes_model.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  RxList<NotesModel> notes = <NotesModel>[].obs;

  addNotes (NotesModel notesData){
    notes.add(notesData);
    update();
  }
}