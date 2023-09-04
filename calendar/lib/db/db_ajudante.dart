import 'package:calendar/modelos/tarefa.dart';
import 'package:sqflite/sqflite.dart';

import 'package:sqflite/sqflite.dart';

class DBajudante {
  static Database? _db;
  static final _versao = 1;
  static final String _nomeTabela = "tasks";

  static Future<void> iniciarDb() async {
    if (_db != null) {
      return;
    }

    try {
      String _path = await getDatabasesPath() + 'tasks.db';
      _db = await openDatabase(
        _path,
        version: _versao,
        onCreate: (db, version) {
          return db.execute(
            "CREATE TABLE $_nomeTabela("
            "titulo STRING, nota TEXT, data STRING,"
            "tempoInicial STRING, tempoFinal STRING"
            "relembrar INTERGER, repetir STRING"
            "cor INTERGER"
            "estaCompleto INTERGER)",
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<int> inserir(Task? task) async {
    print("Criando um novo");
    return await _db?.insert(_nomeTabela, task!.toJson()) ?? 1;
  }

  static Future<List<Map<String, dynamic>>> query() async {
    print("função query chamada");
    return await _db!.query(_nomeTabela);
  }

  static deletaDb(Task task) async {
    return await _db!.delete(_nomeTabela, where: 'id =?', whereArgs: [task.id]);
  }
}
