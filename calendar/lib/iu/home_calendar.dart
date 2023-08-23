import 'package:flutter/material.dart';

class HomeCalendar extends StatefulWidget {
  const HomeCalendar({super.key});

  @override
  State<HomeCalendar> createState() => _HomeCalendarState();
}

class _HomeCalendarState extends State<HomeCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body:   Column(
        children: [
          Text("Theme data", style: TextStyle(fontSize: 30),)
        ]
      ),
    );
  }

  _AppBar(){
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          print("tapped");
        },
        child: Icon(Icons.nightlight_round, size: 20),
        
      ),
      actions: [
        Icon(Icons.person, size: 20,),
        SizedBox(width: 20,)
      ],
    );
  }
}