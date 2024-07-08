import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form.freezed.dart';

@freezed
class AuthFormData with _$AuthFormData {
  factory AuthFormData({
    @Default("") String displayName,
  }) = _AuthFormData;
}
