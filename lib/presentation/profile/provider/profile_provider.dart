import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@riverpod
String getImageProfile(GetImageProfileRef ref) {
  return "https://picsum.photos/300/300";
}

@riverpod
String getDisplayName(GetDisplayNameRef ref) {
  return ref.watch(appLocalDataSourceProvider).getDisplayName() ?? "Unknown";
}
