import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muze_innovation/data/data_source/local/app/app_local_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:toast/toast.dart';

part 'auth_controller.freezed.dart';
part 'auth_controller.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.empty() = _Empty;

  const factory AuthState.loading() = _Loading;
}

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    return const AuthState.empty();
  }

  void showLoading() {
    state = const AuthState.loading();
  }

  void hideLoading() {
    state = const AuthState.empty();
  }
}

@freezed
class AuthFormData with _$AuthFormData {
  factory AuthFormData({
    @Default("") String displayName,
  }) = _AuthFormData;
}

@riverpod
class AuthForm extends _$AuthForm {
  @override
  AuthFormData build() {
    return AuthFormData();
  }

  void setDisplayName(String displayName) {
    state = state.copyWith(
      displayName: displayName,
    );
  }

  Future<bool> submit() async {
    if (state.displayName == "") {
      Toast.show(
        "Please enter your display name.",
        duration: Toast.lengthLong,
      );
      return false;
    }

    ref.read(authControllerProvider.notifier).showLoading();
    ref
        .read(appLocalDataSourceProvider)
        .setDisplayName(displayName: state.displayName);
    await Future.delayed(const Duration(seconds: 2));
    ref.read(authControllerProvider.notifier).hideLoading();
    return true;
  }
}
