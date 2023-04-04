import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@Freezed()
class SABnzbdConfig with _$SABnzbdConfig, JsonSerializableMixin {
  const SABnzbdConfig._();

  const factory SABnzbdConfig({
    required String host,
    @JsonKey(ignore: true) BaseOptions? options,
  }) = _SABnzbdConfig;

  String get baseUrl {
    // TODO: Generate base URL to API path
    return host;
  }

  BaseOptions get baseOptions {
    final opts = options ?? BaseOptions();
    opts.baseUrl = baseUrl;
    // TODO: Prepare HTTP client base options
    return opts;
  }

  factory SABnzbdConfig.fromJson(Map<String, Object?> json) =>
      _$SABnzbdConfigFromJson(json);
}
