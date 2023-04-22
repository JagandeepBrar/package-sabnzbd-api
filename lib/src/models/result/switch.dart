import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

part 'switch.freezed.dart';
part 'switch.g.dart';

@Freezed()
class SABnzbdSwitchResult with _$SABnzbdSwitchResult, JsonSerializableMixin {
  const factory SABnzbdSwitchResult({
    required SABnzbdSwitchResultPayload result,
  }) = _SABnzbdSwitchResult;

  factory SABnzbdSwitchResult.fromJson(Map<String, Object?> json) =>
      _$SABnzbdSwitchResultFromJson(json);
}

@Freezed()
class SABnzbdSwitchResultPayload
    with _$SABnzbdSwitchResultPayload, JsonSerializableMixin {
  const factory SABnzbdSwitchResultPayload({
    required int position,
    required int priority,
  }) = _SABnzbdSwitchResultPayload;

  factory SABnzbdSwitchResultPayload.fromJson(Map<String, Object?> json) =>
      _$SABnzbdSwitchResultPayloadFromJson(json);
}
