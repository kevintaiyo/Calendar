import 'package:calendar/iu/Temas.dart';
import 'package:calendar/iu/home_calendar.dart';
import 'package:calendar/servicos/servicosTemas.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';



Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Calendario',
      debugShowCheckedModeBanner: false,
      theme: Temass.light,
      darkTheme: Temass.dark,
      themeMode: temasServicos().theme,

      home: HomeCalendar(),
    );
  }
}

