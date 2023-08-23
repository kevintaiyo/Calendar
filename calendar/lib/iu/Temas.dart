import 'package:flutter/material.dart';

//ARQUIVO PARA FACILITAR O USO DE TEMAS
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:flutter/material.dart';

const Color azulClr = Color(0xFF4e5ae8);
const Color amareloClr = Color(0xFFFFB746);
const Color rosaClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = azulClr;
const Color cinzaEscuroClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0XFF424242);

class Temass{

  static final light = ThemeData(
    primaryColor: primaryClr,
    brightness: Brightness.light
  );

  static final dark = ThemeData(
    primaryColor: cinzaEscuroClr,
    brightness: Brightness.dark
  );

}