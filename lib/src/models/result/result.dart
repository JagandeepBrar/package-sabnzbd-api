import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@Freezed(genericArgumentFactories: true, toJson: false)
class SABnzbdResult<T extends JsonSerializableMixin>
    with _$SABnzbdResult<T>, JsonSerializableMixin {
  const SABnzbdResult._();

  const factory SABnzbdResult({
    bool? status,
    @JsonKey(name: 'nzo_ids') List<String>? nzoIds,
    T? result,
  }) = _SABnzbdResult;

  factory SABnzbdResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$SABnzbdResultFromJson(json, fromJsonT);

  @override
  Map<String, dynamic> toJson() {
    return {
      if (status != null) 'status': status,
      if (nzoIds != null) 'nzo_ids': nzoIds,
      if (result != null) 'result': result!.toJson(),
    };
  }
}
