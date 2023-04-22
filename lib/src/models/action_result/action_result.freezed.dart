// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SABnzbdActionResult _$SABnzbdActionResultFromJson(Map<String, dynamic> json) {
  return _SABnzbdActionResult.fromJson(json);
}

/// @nodoc
mixin _$SABnzbdActionResult {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'nzo_ids')
  List<String>? get nzoIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SABnzbdActionResultCopyWith<SABnzbdActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SABnzbdActionResultCopyWith<$Res> {
  factory $SABnzbdActionResultCopyWith(
          SABnzbdActionResult value, $Res Function(SABnzbdActionResult) then) =
      _$SABnzbdActionResultCopyWithImpl<$Res, SABnzbdActionResult>;
  @useResult
  $Res call({bool status, @JsonKey(name: 'nzo_ids') List<String>? nzoIds});
}

/// @nodoc
class _$SABnzbdActionResultCopyWithImpl<$Res, $Val extends SABnzbdActionResult>
    implements $SABnzbdActionResultCopyWith<$Res> {
  _$SABnzbdActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? nzoIds = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      nzoIds: freezed == nzoIds
          ? _value.nzoIds
          : nzoIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SABnzbdActionResultCopyWith<$Res>
    implements $SABnzbdActionResultCopyWith<$Res> {
  factory _$$_SABnzbdActionResultCopyWith(_$_SABnzbdActionResult value,
          $Res Function(_$_SABnzbdActionResult) then) =
      __$$_SABnzbdActionResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, @JsonKey(name: 'nzo_ids') List<String>? nzoIds});
}

/// @nodoc
class __$$_SABnzbdActionResultCopyWithImpl<$Res>
    extends _$SABnzbdActionResultCopyWithImpl<$Res, _$_SABnzbdActionResult>
    implements _$$_SABnzbdActionResultCopyWith<$Res> {
  __$$_SABnzbdActionResultCopyWithImpl(_$_SABnzbdActionResult _value,
      $Res Function(_$_SABnzbdActionResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? nzoIds = freezed,
  }) {
    return _then(_$_SABnzbdActionResult(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      nzoIds: freezed == nzoIds
          ? _value._nzoIds
          : nzoIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SABnzbdActionResult implements _SABnzbdActionResult {
  const _$_SABnzbdActionResult(
      {required this.status,
      @JsonKey(name: 'nzo_ids') final List<String>? nzoIds})
      : _nzoIds = nzoIds;

  factory _$_SABnzbdActionResult.fromJson(Map<String, dynamic> json) =>
      _$$_SABnzbdActionResultFromJson(json);

  @override
  final bool status;
  final List<String>? _nzoIds;
  @override
  @JsonKey(name: 'nzo_ids')
  List<String>? get nzoIds {
    final value = _nzoIds;
    if (value == null) return null;
    if (_nzoIds is EqualUnmodifiableListView) return _nzoIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SABnzbdActionResult(status: $status, nzoIds: $nzoIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SABnzbdActionResult &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._nzoIds, _nzoIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_nzoIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SABnzbdActionResultCopyWith<_$_SABnzbdActionResult> get copyWith =>
      __$$_SABnzbdActionResultCopyWithImpl<_$_SABnzbdActionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SABnzbdActionResultToJson(
      this,
    );
  }
}

abstract class _SABnzbdActionResult implements SABnzbdActionResult {
  const factory _SABnzbdActionResult(
          {required final bool status,
          @JsonKey(name: 'nzo_ids') final List<String>? nzoIds}) =
      _$_SABnzbdActionResult;

  factory _SABnzbdActionResult.fromJson(Map<String, dynamic> json) =
      _$_SABnzbdActionResult.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'nzo_ids')
  List<String>? get nzoIds;
  @override
  @JsonKey(ignore: true)
  _$$_SABnzbdActionResultCopyWith<_$_SABnzbdActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
