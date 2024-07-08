import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.options.baseUrl = 'https://run.mocky.io';
  return dio;
});

final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());
