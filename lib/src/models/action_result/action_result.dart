import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

part 'action_result.freezed.dart';
part 'action_result.g.dart';

@Freezed()
class SABnzbdActionResult with _$SABnzbdActionResult, JsonSerializableMixin {
  const factory SABnzbdActionResult({
    required bool status,
    @JsonKey(name: 'nzo_ids') List<String>? nzoIds,
  }) = _SABnzbdActionResult;

  factory SABnzbdActionResult.fromJson(Map<String, Object?> json) =>
      _$SABnzbdActionResultFromJson(json);
}
