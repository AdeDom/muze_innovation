import 'package:muze_innovation/presentation/auth/model/auth_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

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
}
