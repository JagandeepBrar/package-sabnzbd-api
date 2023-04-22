// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SABnzbdResult<T> _$$_SABnzbdResultFromJson<T extends JsonSerializableMixin>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_SABnzbdResult<T>(
      status: json['status'] as bool?,
      nzoIds:
          (json['nzo_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
    );

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);
