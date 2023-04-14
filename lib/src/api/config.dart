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
    required String apiKey,
    @JsonKey(includeFromJson: false, includeToJson: false) BaseOptions? options,
  }) = _SABnzbdConfig;

  String get baseUrl {
    String url = host;
    if (url.endsWith('/')) url = url.substring(0, url.length - 1);
    return '$url/api';
  }

  BaseOptions get baseOptions {
    final opts = options ?? BaseOptions();
    opts.baseUrl = baseUrl;
    opts.queryParameters['output'] = 'json';
    if (apiKey.isNotEmpty) opts.queryParameters['apikey'] = apiKey;
    return opts;
  }

  factory SABnzbdConfig.fromJson(Map<String, Object?> json) =>
      _$SABnzbdConfigFromJson(json);
}
