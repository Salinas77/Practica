import 'package:flutter/material.dart';


class Dispositivo{
  final Color _color;
  final String _text;
  final Icon _icono;
  Dispositivo(this._color,this._icono,this._text);
  String get texto=>_text;
  Color get color=>_color;
  Icon get icono=>_icono;
}