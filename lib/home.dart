import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dispositivo.dart';

class HomeWidget extends StatefulWidget{
  final String title;
  HomeWidget({Key key, this.title}):super(key:key);
  @override 
  _HomeWidgetState createState()=>_HomeWidgetState();
}
class _HomeWidgetState extends State<HomeWidget>{
  final List<Dispositivo>lstDispositivo=[
    Dispositivo(Colors.red,Icon(Icons.cloud),'sensor de humedad'),
    Dispositivo(Colors.blue,Icon(Icons.alarm),'sensor de puerta'),
  ];
  List<Dispositivo>lstDisAgregados=[];
  void _agregarDispositivo(){
    setState(() {
      int max=lstDispositivo.length;
      //las siguientes dos lineas no son necesarias en una app real solo se utilizan por que es un simulador 
      Dispositivo dispositivo=lstDispositivo[
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(max)];
        lstDisAgregados.add(dispositivo);
    });
  }
  @override
  Widget build (BuildContext contexto){
    final List<Container> textSpans=List<Container>();
    for(var dispositivo in lstDisAgregados){
      textSpans.add(Container(
        child: ListTile(
          title: Text(dispositivo.texto, style: TextStyle(color: dispositivo.color)),
          leading: dispositivo.icono,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle, border: Border.all(
              color: dispositivo.color , style: BorderStyle.solid
            )
          ),
          margin: EdgeInsets.only(bottom: 10.0),
        ),
      );
    }
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical,
      children: <Widget>[
        Card(
          child: Column(
            children: textSpans,
          ),
        )
      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: _agregarDispositivo,
    tooltip: 'Agregar',
    child: Icon(Icons.accessibility),
    ),
    appBar: AppBar(title: Text("Practica 5"),),
    );
  }
}