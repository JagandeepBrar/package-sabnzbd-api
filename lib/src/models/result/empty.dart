import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

part 'empty.freezed.dart';
part 'empty.g.dart';

@Freezed()
class SABnzbdEmptyResult with _$SABnzbdEmptyResult, JsonSerializableMixin {
  const factory SABnzbdEmptyResult() = _SABnzbdEmptyResult;

  factory SABnzbdEmptyResult.fromJson(Map<String, Object?> json) =>
      _$SABnzbdEmptyResultFromJson(json);
}
