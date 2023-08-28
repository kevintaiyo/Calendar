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
  String tempoFinal = "9:30";
  String tempoInicial = DateFormat("hh:mm a").format(DateTime.now()).toString();
  int lenbrete = 5; //PAREI AQUI = 1:34:36
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
                widget: IconButton(
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    _pegarDataDoUsuario();
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(child: InputAgendamentos(
                    titulo: "Tempo Inicial",dica: tempoInicial,widget: IconButton(
                      onPressed: (){
                        _pegarTempoDoUsuario(oTempoInicial: true);
                      },icon: Icon(
                        Icons.access_time_filled_rounded,color: Colors.grey,
                      ),
                    ),
                    )
                  ),
                  SizedBox(width: 12,),
                  Expanded(child: InputAgendamentos(
                    titulo: "Tempo Final",dica: tempoFinal,widget: IconButton(
                      onPressed: (){
                        _pegarTempoDoUsuario(oTempoInicial: false);
                      },icon: Icon(
                        Icons.access_time_filled_rounded,color: Colors.grey,
                      ),
                    ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
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

  _pegarDataDoUsuario() async {
    DateTime? pegarData = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2100));

        if(pegarData!=null){
          setState(() {
             dataSelecionada = pegarData;
             print(dataSelecionada);
          });        
        }else{

        }
  }

  _pegarTempoDoUsuario({required bool oTempoInicial}) async {
    var pegarTempo = await exibirTempoDoUsuario();
    String _tempoFormatado = pegarTempo.format(context);
    if(pegarTempo ==null){
      print("");
    }else if(oTempoInicial ==true){
     setState(() {
        tempoInicial =_tempoFormatado;
     });
    }else if(oTempoInicial==false){
      setState(() {
        tempoFinal =_tempoFormatado;
      });
    }
  }

  exibirTempoDoUsuario(){
    return showTimePicker(initialEntryMode: TimePickerEntryMode.input,context: context, initialTime: TimeOfDay(hour: int.parse(tempoInicial.split(":")[0]), minute: int.parse(tempoInicial.split(":")[1].split(" ")[0])));
  }

}
