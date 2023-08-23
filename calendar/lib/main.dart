import 'package:calendar/iu/Temas.dart';
import 'package:calendar/iu/home_calendar.dart';
import 'package:calendar/servicos/servicosTemas.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendario',
      debugShowCheckedModeBanner: false,
      theme: Temass.light,
      darkTheme: Temass.dark,
      themeMode: temasServicos().theme,

      home: HomeCalendar(),
    );
  }
}

