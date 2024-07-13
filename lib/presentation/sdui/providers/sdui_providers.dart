import 'package:muze_innovation/data/models/sdui/sdui_data.dart';
import 'package:muze_innovation/data/repositories/sdui/sdui_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sdui_providers.g.dart';

@riverpod
Future<SduiData> fetchSdui(
  FetchSduiRef ref, {
  String? data,
}) async {
  return ref.watch(sduiRepositoryProvider).fetchSdui(data);
}
