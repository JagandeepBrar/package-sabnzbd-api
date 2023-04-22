// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SABnzbdResult<T> _$SABnzbdResultFromJson<T extends JsonSerializableMixin>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _SABnzbdResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$SABnzbdResult<T extends JsonSerializableMixin> {
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'nzo_ids')
  List<String>? get nzoIds => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SABnzbdResultCopyWith<T, SABnzbdResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SABnzbdResultCopyWith<T extends JsonSerializableMixin, $Res> {
  factory $SABnzbdResultCopyWith(
          SABnzbdResult<T> value, $Res Function(SABnzbdResult<T>) then) =
      _$SABnzbdResultCopyWithImpl<T, $Res, SABnzbdResult<T>>;
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(name: 'nzo_ids') List<String>? nzoIds,
      int? position,
      T? result});
}

/// @nodoc
class _$SABnzbdResultCopyWithImpl<T extends JsonSerializableMixin, $Res,
    $Val extends SABnzbdResult<T>> implements $SABnzbdResultCopyWith<T, $Res> {
  _$SABnzbdResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? nzoIds = freezed,
    Object? position = freezed,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      nzoIds: freezed == nzoIds
          ? _value.nzoIds
          : nzoIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SABnzbdResultCopyWith<T extends JsonSerializableMixin, $Res>
    implements $SABnzbdResultCopyWith<T, $Res> {
  factory _$$_SABnzbdResultCopyWith(
          _$_SABnzbdResult<T> value, $Res Function(_$_SABnzbdResult<T>) then) =
      __$$_SABnzbdResultCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(name: 'nzo_ids') List<String>? nzoIds,
      int? position,
      T? result});
}

/// @nodoc
class __$$_SABnzbdResultCopyWithImpl<T extends JsonSerializableMixin, $Res>
    extends _$SABnzbdResultCopyWithImpl<T, $Res, _$_SABnzbdResult<T>>
    implements _$$_SABnzbdResultCopyWith<T, $Res> {
  __$$_SABnzbdResultCopyWithImpl(
      _$_SABnzbdResult<T> _value, $Res Function(_$_SABnzbdResult<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? nzoIds = freezed,
    Object? position = freezed,
    Object? result = null,
  }) {
    return _then(_$_SABnzbdResult<T>(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      nzoIds: freezed == nzoIds
          ? _value._nzoIds
          : nzoIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class _$_SABnzbdResult<T extends JsonSerializableMixin>
    extends _SABnzbdResult<T> {
  const _$_SABnzbdResult(
      {this.status,
      @JsonKey(name: 'nzo_ids') final List<String>? nzoIds,
      this.position,
      this.result})
      : _nzoIds = nzoIds,
        super._();

  factory _$_SABnzbdResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_SABnzbdResultFromJson(json, fromJsonT);

  @override
  final bool? status;
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
  final int? position;
  @override
  final T? result;

  @override
  String toString() {
    return 'SABnzbdResult<$T>(status: $status, nzoIds: $nzoIds, position: $position, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SABnzbdResult<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._nzoIds, _nzoIds) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_nzoIds),
      position,
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SABnzbdResultCopyWith<T, _$_SABnzbdResult<T>> get copyWith =>
      __$$_SABnzbdResultCopyWithImpl<T, _$_SABnzbdResult<T>>(this, _$identity);
}

abstract class _SABnzbdResult<T extends JsonSerializableMixin>
    extends SABnzbdResult<T> {
  const factory _SABnzbdResult(
      {final bool? status,
      @JsonKey(name: 'nzo_ids') final List<String>? nzoIds,
      final int? position,
      final T? result}) = _$_SABnzbdResult<T>;
  const _SABnzbdResult._() : super._();

  factory _SABnzbdResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_SABnzbdResult<T>.fromJson;

  @override
  bool? get status;
  @override
  @JsonKey(name: 'nzo_ids')
  List<String>? get nzoIds;
  @override
  int? get position;
  @override
  T? get result;
  @override
  @JsonKey(ignore: true)
  _$$_SABnzbdResultCopyWith<T, _$_SABnzbdResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
