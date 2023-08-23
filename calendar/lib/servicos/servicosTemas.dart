import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class temasServicos{
  final _box = GetStorage();
  final _key =  'ModoDark';
  
  bool _carregarTemadaBox() => _box.read(_key)??false;
  ThemeMode get theme => _carregarTemadaBox()?ThemeMode.dark:ThemeMode.light;
  void trocarTema(){
    Get.changeThemeMode(_carregarTemadaBox()?ThemeMode.light:ThemeMode.dark);
  }

}