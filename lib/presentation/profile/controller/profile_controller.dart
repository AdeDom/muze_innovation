import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller.freezed.dart';
part 'profile_controller.g.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.empty() = _Empty;

  const factory ProfileState.loading() = _Loading;
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  ProfileState build() {
    return const ProfileState.empty();
  }

  Future<void> logout() async {
    state = const ProfileState.loading();
    ref.read(appLocalDataSourceProvider).clear();
    await Future.delayed(const Duration(seconds: 2));
  }
}

@riverpod
String getImageProfile(GetImageProfileRef ref) {
  return "https://picsum.photos/300/300";
}

@riverpod
String getDisplayName(GetDisplayNameRef ref) {
  return ref.watch(appLocalDataSourceProvider).getDisplayName() ?? "Unknown";
}
