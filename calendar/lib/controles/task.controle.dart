import 'package:calendar/db/db_ajudante.dart';
import 'package:get/get.dart';
import 'package:calendar/modelos/tarefa.dart';

class TaskControle extends GetxController {
  @override
  void pronto() {
    super.onReady();
  }

  Future<int> addTask({Task? task}) async {
    return await DBajudante.inserir(task);
  }
}
