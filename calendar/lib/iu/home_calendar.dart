import 'dart:html';

import 'package:calendar/servicos/servicos_notificacao.dart';
import 'package:flutter/material.dart';
import 'package:calendar/servicos/servicosTemas.dart';
import 'package:get/get.dart';

class HomeCalendar extends StatefulWidget {
  const HomeCalendar({super.key});

  @override
  State<HomeCalendar> createState() => _HomeCalendarState();
}

class _HomeCalendarState extends State<HomeCalendar> {
  var notificacao;

  @override
  void initState() {
    super.initState();
    notificacao = Notificacoes();
    notificacao.requestIOSPermissions();
    notificacao.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: Column(children: [
        Text(
          "Theme data",
          style: TextStyle(fontSize: 30),
        )
      ]),
    );
  }

  _AppBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          temasServicos().trocarTema();
          notificacao.displayNotification(
              Title: "TEMA TROCADO",
              body:
                  Get.isDarkMode ? "ATIVADO MODO DARK" : "ATIVADO MODO CLARO");
        },
        child: Icon(Icons.nightlight_round, size: 20),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
