import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum ColorSdui {
  @JsonValue("Theme.of(context).colorScheme.inversePrimary")
  inversePrimary,
  @JsonValue("unknown")
  unknown;

  Color? fromValue(BuildContext context) {
    switch (this) {
      case ColorSdui.inversePrimary:
        return Theme.of(context).colorScheme.inversePrimary;
      case ColorSdui.unknown:
        return Colors.transparent;
    }
  }
}
