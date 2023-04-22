// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SABnzbdActionResult _$$_SABnzbdActionResultFromJson(
        Map<String, dynamic> json) =>
    _$_SABnzbdActionResult(
      status: json['status'] as bool,
      nzoIds:
          (json['nzo_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SABnzbdActionResultToJson(
    _$_SABnzbdActionResult instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nzo_ids', instance.nzoIds);
  return val;
}
