// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SABnzbdConfig _$SABnzbdConfigFromJson(Map<String, dynamic> json) {
  return _SABnzbdConfig.fromJson(json);
}

/// @nodoc
mixin _$SABnzbdConfig {
  String get host => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  BaseOptions? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SABnzbdConfigCopyWith<SABnzbdConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SABnzbdConfigCopyWith<$Res> {
  factory $SABnzbdConfigCopyWith(
          SABnzbdConfig value, $Res Function(SABnzbdConfig) then) =
      _$SABnzbdConfigCopyWithImpl<$Res, SABnzbdConfig>;
  @useResult
  $Res call({String host, @JsonKey(ignore: true) BaseOptions? options});
}

/// @nodoc
class _$SABnzbdConfigCopyWithImpl<$Res, $Val extends SABnzbdConfig>
    implements $SABnzbdConfigCopyWith<$Res> {
  _$SABnzbdConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as BaseOptions?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SABnzbdConfigCopyWith<$Res>
    implements $SABnzbdConfigCopyWith<$Res> {
  factory _$$_SABnzbdConfigCopyWith(
          _$_SABnzbdConfig value, $Res Function(_$_SABnzbdConfig) then) =
      __$$_SABnzbdConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String host, @JsonKey(ignore: true) BaseOptions? options});
}

/// @nodoc
class __$$_SABnzbdConfigCopyWithImpl<$Res>
    extends _$SABnzbdConfigCopyWithImpl<$Res, _$_SABnzbdConfig>
    implements _$$_SABnzbdConfigCopyWith<$Res> {
  __$$_SABnzbdConfigCopyWithImpl(
      _$_SABnzbdConfig _value, $Res Function(_$_SABnzbdConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? options = freezed,
  }) {
    return _then(_$_SABnzbdConfig(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as BaseOptions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SABnzbdConfig extends _SABnzbdConfig {
  const _$_SABnzbdConfig(
      {required this.host, @JsonKey(ignore: true) this.options})
      : super._();

  factory _$_SABnzbdConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SABnzbdConfigFromJson(json);

  @override
  final String host;
  @override
  @JsonKey(ignore: true)
  final BaseOptions? options;

  @override
  String toString() {
    return 'SABnzbdConfig(host: $host, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SABnzbdConfig &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, host, options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SABnzbdConfigCopyWith<_$_SABnzbdConfig> get copyWith =>
      __$$_SABnzbdConfigCopyWithImpl<_$_SABnzbdConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SABnzbdConfigToJson(
      this,
    );
  }
}

abstract class _SABnzbdConfig extends SABnzbdConfig {
  const factory _SABnzbdConfig(
      {required final String host,
      @JsonKey(ignore: true) final BaseOptions? options}) = _$_SABnzbdConfig;
  const _SABnzbdConfig._() : super._();

  factory _SABnzbdConfig.fromJson(Map<String, dynamic> json) =
      _$_SABnzbdConfig.fromJson;

  @override
  String get host;
  @override
  @JsonKey(ignore: true)
  BaseOptions? get options;
  @override
  @JsonKey(ignore: true)
  _$$_SABnzbdConfigCopyWith<_$_SABnzbdConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
