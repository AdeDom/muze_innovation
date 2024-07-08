// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFormData {
  String get displayName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormDataCopyWith<AuthFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormDataCopyWith<$Res> {
  factory $AuthFormDataCopyWith(
          AuthFormData value, $Res Function(AuthFormData) then) =
      _$AuthFormDataCopyWithImpl<$Res, AuthFormData>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class _$AuthFormDataCopyWithImpl<$Res, $Val extends AuthFormData>
    implements $AuthFormDataCopyWith<$Res> {
  _$AuthFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthFormDataImplCopyWith<$Res>
    implements $AuthFormDataCopyWith<$Res> {
  factory _$$AuthFormDataImplCopyWith(
          _$AuthFormDataImpl value, $Res Function(_$AuthFormDataImpl) then) =
      __$$AuthFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$AuthFormDataImplCopyWithImpl<$Res>
    extends _$AuthFormDataCopyWithImpl<$Res, _$AuthFormDataImpl>
    implements _$$AuthFormDataImplCopyWith<$Res> {
  __$$AuthFormDataImplCopyWithImpl(
      _$AuthFormDataImpl _value, $Res Function(_$AuthFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$AuthFormDataImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFormDataImpl implements _AuthFormData {
  _$AuthFormDataImpl({this.displayName = ""});

  @override
  @JsonKey()
  final String displayName;

  @override
  String toString() {
    return 'AuthFormData(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFormDataImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFormDataImplCopyWith<_$AuthFormDataImpl> get copyWith =>
      __$$AuthFormDataImplCopyWithImpl<_$AuthFormDataImpl>(this, _$identity);
}

abstract class _AuthFormData implements AuthFormData {
  factory _AuthFormData({final String displayName}) = _$AuthFormDataImpl;

  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$AuthFormDataImplCopyWith<_$AuthFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
