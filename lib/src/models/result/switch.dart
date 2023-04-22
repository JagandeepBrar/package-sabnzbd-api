import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

part 'switch.freezed.dart';
part 'switch.g.dart';

@Freezed()
class SABnzbdSwitchResult with _$SABnzbdSwitchResult, JsonSerializableMixin {
  const factory SABnzbdSwitchResult({
    required int position,
    required int priority,
  }) = _SABnzbdSwitchResult;

  factory SABnzbdSwitchResult.fromJson(Map<String, Object?> json) =>
      _$SABnzbdSwitchResultFromJson(json);
}
