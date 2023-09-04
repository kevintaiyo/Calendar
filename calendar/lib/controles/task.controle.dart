import 'package:calendar/db/db_ajudante.dart';
import 'package:get/get.dart';
import 'package:calendar/modelos/tarefa.dart';

class TaskControle extends GetxController {
  @override
  void pronto() {
    getTasks();
    super.onReady();
  }

  var taskLista = <Task>[].obs;

  Future<int> addTask({Task? task}) async {
    return await DBajudante.inserir(task);
  }

  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBajudante.query();
    taskLista.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());
  }

  void delete(Task task) {
    DBajudante.deletaDb(task);
  }
}
