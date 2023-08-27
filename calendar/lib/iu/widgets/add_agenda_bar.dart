import 'package:calendar/iu/Temas.dart';
import 'package:calendar/iu/widgets/inputs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class addAgendametoPagina extends StatefulWidget {
  const addAgendametoPagina({super.key});

  @override
  State<addAgendametoPagina> createState() => _addAgendametoPaginaState();
}

class _addAgendametoPaginaState extends State<addAgendametoPagina> {
  DateTime dataSelecionada = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _AppBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Add Agendamento",
                style: headingStyle,
              ),
              //CRUD DO AGENDAMENTO
              InputAgendamentos(titulo: "Titulo", dica: "Digite seu titulo"),
              InputAgendamentos(titulo: "Nota", dica: "Digite sua nota"),
              InputAgendamentos(
                titulo: "Data",
                dica: DateFormat.yMd().format(dataSelecionada),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_AppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: context.theme.backgroundColor,
    leading: GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Icon(
        Icons.arrow_back_ios,
        size: 20,
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    ),
    actions: [
      CircleAvatar(
        backgroundImage: AssetImage("images/perfil.png"),
      ),
      SizedBox(
        width: 20,
      )
    ],
  );
}
