import 'package:flutter/material.dart';

enum AlignmentDirectionalSdui {
  topStart,
  topCenter,
  topEnd,
  centerStart,
  center,
  centerEnd,
  bottomStart,
  bottomCenter,
  bottomEnd;

  AlignmentDirectional fromValue() {
    switch (this) {
      case AlignmentDirectionalSdui.topStart:
        return AlignmentDirectional.topStart;
      case AlignmentDirectionalSdui.topCenter:
        return AlignmentDirectional.topCenter;
      case AlignmentDirectionalSdui.topEnd:
        return AlignmentDirectional.topEnd;
      case AlignmentDirectionalSdui.centerStart:
        return AlignmentDirectional.centerStart;
      case AlignmentDirectionalSdui.center:
        return AlignmentDirectional.center;
      case AlignmentDirectionalSdui.centerEnd:
        return AlignmentDirectional.centerEnd;
      case AlignmentDirectionalSdui.bottomStart:
        return AlignmentDirectional.bottomStart;
      case AlignmentDirectionalSdui.bottomCenter:
        return AlignmentDirectional.bottomCenter;
      case AlignmentDirectionalSdui.bottomEnd:
        return AlignmentDirectional.bottomEnd;
    }
  }
}
