import 'package:flutter/material.dart';

enum ColorsSdui {
  transparent,
  black,
  black87,
  black54,
  black45,
  black38,
  black26,
  black12,
  white,
  white70,
  white60,
  white54,
  white38,
  white30,
  white24,
  white12,
  white10,
  red,
  redAccent,
  pink,
  pinkAccent,
  purple,
  purpleAccent,
  deepPurple,
  deepPurpleAccent,
  indigo,
  indigoAccent,
  blue,
  blueAccent,
  lightBlue,
  lightBlueAccent,
  cyan,
  cyanAccent,
  teal,
  tealAccent,
  green,
  greenAccent,
  lightGreen,
  lightGreenAccent,
  lime,
  limeAccent,
  yellow,
  yellowAccent,
  amber,
  amberAccent,
  orange,
  orangeAccent,
  deepOrange,
  deepOrangeAccent,
  brown,
  grey,
  blueGrey;

  Color fromValue() {
    switch (this) {
      case ColorsSdui.transparent:
        return Colors.transparent;
      case ColorsSdui.black:
        return Colors.black;
      case ColorsSdui.black87:
        return Colors.black87;
      case ColorsSdui.black54:
        return Colors.black54;
      case ColorsSdui.black45:
        return Colors.black45;
      case ColorsSdui.black38:
        return Colors.black38;
      case ColorsSdui.black26:
        return Colors.black26;
      case ColorsSdui.black12:
        return Colors.black12;
      case ColorsSdui.white:
        return Colors.white;
      case ColorsSdui.white70:
        return Colors.white70;
      case ColorsSdui.white60:
        return Colors.white60;
      case ColorsSdui.white54:
        return Colors.white54;
      case ColorsSdui.white38:
        return Colors.white38;
      case ColorsSdui.white30:
        return Colors.white30;
      case ColorsSdui.white24:
        return Colors.white24;
      case ColorsSdui.white12:
        return Colors.white12;
      case ColorsSdui.white10:
        return Colors.white10;
      case ColorsSdui.red:
        return Colors.red;
      case ColorsSdui.redAccent:
        return Colors.redAccent;
      case ColorsSdui.pink:
        return Colors.pink;
      case ColorsSdui.pinkAccent:
        return Colors.pinkAccent;
      case ColorsSdui.purple:
        return Colors.purple;
      case ColorsSdui.purpleAccent:
        return Colors.purpleAccent;
      case ColorsSdui.deepPurple:
        return Colors.deepPurple;
      case ColorsSdui.deepPurpleAccent:
        return Colors.deepPurpleAccent;
      case ColorsSdui.indigo:
        return Colors.indigo;
      case ColorsSdui.indigoAccent:
        return Colors.indigoAccent;
      case ColorsSdui.blue:
        return Colors.blue;
      case ColorsSdui.blueAccent:
        return Colors.blueAccent;
      case ColorsSdui.lightBlue:
        return Colors.lightBlue;
      case ColorsSdui.lightBlueAccent:
        return Colors.lightBlueAccent;
      case ColorsSdui.cyan:
        return Colors.cyan;
      case ColorsSdui.cyanAccent:
        return Colors.cyanAccent;
      case ColorsSdui.teal:
        return Colors.teal;
      case ColorsSdui.tealAccent:
        return Colors.tealAccent;
      case ColorsSdui.green:
        return Colors.green;
      case ColorsSdui.greenAccent:
        return Colors.greenAccent;
      case ColorsSdui.lightGreen:
        return Colors.lightGreen;
      case ColorsSdui.lightGreenAccent:
        return Colors.lightGreenAccent;
      case ColorsSdui.lime:
        return Colors.lime;
      case ColorsSdui.limeAccent:
        return Colors.limeAccent;
      case ColorsSdui.yellow:
        return Colors.yellow;
      case ColorsSdui.yellowAccent:
        return Colors.yellowAccent;
      case ColorsSdui.amber:
        return Colors.amber;
      case ColorsSdui.amberAccent:
        return Colors.amberAccent;
      case ColorsSdui.orange:
        return Colors.orange;
      case ColorsSdui.orangeAccent:
        return Colors.orangeAccent;
      case ColorsSdui.deepOrange:
        return Colors.deepOrange;
      case ColorsSdui.deepOrangeAccent:
        return Colors.deepOrangeAccent;
      case ColorsSdui.brown:
        return Colors.brown;
      case ColorsSdui.grey:
        return Colors.grey;
      case ColorsSdui.blueGrey:
        return Colors.blueGrey;
    }
  }
}
