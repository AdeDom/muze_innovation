import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muze_innovation/data/models/sdui/sdui_data.dart';

abstract class SduiRepository {
  Future<SduiData> fetchSdui(String? data);
}

class SduiRepositoryImpl extends SduiRepository {
  SduiRepositoryImpl();

  @override
  Future<SduiData> fetchSdui(String? data) async {
    final jsonString = await rootBundle.loadString('assets/json/$data');
    return SduiData.fromJson(json.decode(jsonString));
  }
}

final sduiRepositoryProvider = Provider<SduiRepository>((ref) {
  return SduiRepositoryImpl();
});
