// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SABnzbdSwitchResult _$$_SABnzbdSwitchResultFromJson(
        Map<String, dynamic> json) =>
    _$_SABnzbdSwitchResult(
      result: SABnzbdSwitchResultPayload.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SABnzbdSwitchResultToJson(
        _$_SABnzbdSwitchResult instance) =>
    <String, dynamic>{
      'result': instance.result.toJson(),
    };

_$_SABnzbdSwitchResultPayload _$$_SABnzbdSwitchResultPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_SABnzbdSwitchResultPayload(
      position: json['position'] as int,
      priority: json['priority'] as int,
    );

Map<String, dynamic> _$$_SABnzbdSwitchResultPayloadToJson(
        _$_SABnzbdSwitchResultPayload instance) =>
    <String, dynamic>{
      'position': instance.position,
      'priority': instance.priority,
    };
