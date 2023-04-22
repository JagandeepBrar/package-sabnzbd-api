// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SABnzbdSwitchResult _$SABnzbdSwitchResultFromJson(Map<String, dynamic> json) {
  return _SABnzbdSwitchResult.fromJson(json);
}

/// @nodoc
mixin _$SABnzbdSwitchResult {
  int get position => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SABnzbdSwitchResultCopyWith<SABnzbdSwitchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SABnzbdSwitchResultCopyWith<$Res> {
  factory $SABnzbdSwitchResultCopyWith(
          SABnzbdSwitchResult value, $Res Function(SABnzbdSwitchResult) then) =
      _$SABnzbdSwitchResultCopyWithImpl<$Res, SABnzbdSwitchResult>;
  @useResult
  $Res call({int position, int priority});
}

/// @nodoc
class _$SABnzbdSwitchResultCopyWithImpl<$Res, $Val extends SABnzbdSwitchResult>
    implements $SABnzbdSwitchResultCopyWith<$Res> {
  _$SABnzbdSwitchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? priority = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SABnzbdSwitchResultCopyWith<$Res>
    implements $SABnzbdSwitchResultCopyWith<$Res> {
  factory _$$_SABnzbdSwitchResultCopyWith(_$_SABnzbdSwitchResult value,
          $Res Function(_$_SABnzbdSwitchResult) then) =
      __$$_SABnzbdSwitchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, int priority});
}

/// @nodoc
class __$$_SABnzbdSwitchResultCopyWithImpl<$Res>
    extends _$SABnzbdSwitchResultCopyWithImpl<$Res, _$_SABnzbdSwitchResult>
    implements _$$_SABnzbdSwitchResultCopyWith<$Res> {
  __$$_SABnzbdSwitchResultCopyWithImpl(_$_SABnzbdSwitchResult _value,
      $Res Function(_$_SABnzbdSwitchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? priority = null,
  }) {
    return _then(_$_SABnzbdSwitchResult(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SABnzbdSwitchResult implements _SABnzbdSwitchResult {
  const _$_SABnzbdSwitchResult(
      {required this.position, required this.priority});

  factory _$_SABnzbdSwitchResult.fromJson(Map<String, dynamic> json) =>
      _$$_SABnzbdSwitchResultFromJson(json);

  @override
  final int position;
  @override
  final int priority;

  @override
  String toString() {
    return 'SABnzbdSwitchResult(position: $position, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SABnzbdSwitchResult &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SABnzbdSwitchResultCopyWith<_$_SABnzbdSwitchResult> get copyWith =>
      __$$_SABnzbdSwitchResultCopyWithImpl<_$_SABnzbdSwitchResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SABnzbdSwitchResultToJson(
      this,
    );
  }
}

abstract class _SABnzbdSwitchResult implements SABnzbdSwitchResult {
  const factory _SABnzbdSwitchResult(
      {required final int position,
      required final int priority}) = _$_SABnzbdSwitchResult;

  factory _SABnzbdSwitchResult.fromJson(Map<String, dynamic> json) =
      _$_SABnzbdSwitchResult.fromJson;

  @override
  int get position;
  @override
  int get priority;
  @override
  @JsonKey(ignore: true)
  _$$_SABnzbdSwitchResultCopyWith<_$_SABnzbdSwitchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
