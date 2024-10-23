import 'package:todo_app/models/todomodel.dart';

class Storenotes {
  static List<Todomodel> notes = [];

  static Future<void> addnote(String title, String des) async {
    Todomodel model = Todomodel(title: title, description: des);

    notes.add(model);
  }

  static void remove(index) {
    notes.removeAt(index);
  }
}
