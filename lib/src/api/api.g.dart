// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _SABnzbdAPI implements SABnzbdAPI {
  _SABnzbdAPI(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> addNZBUrl(
    url, {
    name,
    password,
    category,
    script,
    priority,
    postProcessing,
    mode = 'addurl',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'name': url,
      r'nzbname': name,
      r'password': password,
      r'cat': category,
      r'script': script,
      r'priority': priority?.toJson(),
      r'pp': postProcessing?.toJson(),
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> addNZBFile(
    file,
    name, {
    password,
    category,
    script,
    priority,
    postProcessing,
    mode = 'addfile',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'nzbname': name,
      r'password': password,
      r'cat': category,
      r'script': script,
      r'priority': priority?.toJson(),
      r'pp': postProcessing?.toJson(),
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
        'name',
        MultipartFile.fromBytes(
          file,
          filename: 'nzb',
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> addNZBLocalFile(
    path, {
    name,
    password,
    category,
    script,
    priority,
    postProcessing,
    mode = 'addlocalfile',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'name': path,
      r'nzbname': name,
      r'password': password,
      r'cat': category,
      r'script': script,
      r'priority': priority?.toJson(),
      r'pp': postProcessing?.toJson(),
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdSwitchResult>> moveJob(
    nzoId,
    destinationNzoId, {
    mode = 'switch',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'value2': destinationNzoId,
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdSwitchResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdSwitchResult>.fromJson(
      _result.data!,
      (json) => SABnzbdSwitchResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdSwitchResult>> moveJobToIndex(
    nzoId,
    index, {
    mode = 'switch',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'value2': index,
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdSwitchResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdSwitchResult>.fromJson(
      _result.data!,
      (json) => SABnzbdSwitchResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> pauseJob(
    nzoId, {
    mode = 'queue',
    action = 'pause',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> pauseQueue({
    mode = 'pause',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mode': mode};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> pauseQueueFor(
    minutes, {
    mode = 'config',
    action = 'set_pause',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': minutes,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> purgeQueue(
    query, {
    deleteFiles = 0,
    mode = 'queue',
    action = 'purge',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'search': query,
      r'del_files': deleteFiles,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> removeCompleteAction({
    completeAction = '',
    mode = 'queue',
    action = 'change_complete_action',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': completeAction,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> removeJob(
    nzoId, {
    deleteFiles = 0,
    mode = 'queue',
    action = 'delete',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'del_files': deleteFiles,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> removeSpeedLimit({
    limit = '',
    mode = 'config',
    action = 'speedlimit',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': limit,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> resumeJob(
    nzoId, {
    mode = 'queue',
    action = 'resume',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> resumeQueue({
    mode = 'resume',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mode': mode};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<void> restartInstance({
    mode = 'restart',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mode': mode};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '',
          queryParameters: queryParameters,
          data: _data,
          cancelToken: cancelToken,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  }

  @override
  Future<void> shutdownInstance({
    mode = 'shutdown',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mode': mode};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '',
          queryParameters: queryParameters,
          data: _data,
          cancelToken: cancelToken,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> setCompleteAction(
    completeAction, {
    mode = 'queue',
    action = 'change_complete_action',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': completeAction.toJson(),
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobCategory(
    nzoId,
    category, {
    mode = 'change_cat',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'value2': category,
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobPostProcessingOptions(
    nzoId,
    option, {
    mode = 'change_opts',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'value2': option.toJson(),
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobPriority(
    nzoId,
    priority, {
    mode = 'queue',
    action = 'priority',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'value2': priority.toJson(),
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobScript(
    nzoId,
    script, {
    mode = 'change_script',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': nzoId,
      r'value2': script,
      r'mode': mode,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> setSpeedLimit(
    limit, {
    mode = 'config',
    action = 'speedlimit',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'value': limit,
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<SABnzbdResult<SABnzbdEmptyResult>> sortQueue(
    sortType,
    direction, {
    mode = 'queue',
    action = 'sort',
    cancelToken,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'sort': sortType.toJson(),
      r'dir': direction.toJson(),
      r'mode': mode,
      r'name': action,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SABnzbdResult<SABnzbdEmptyResult>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '',
              queryParameters: queryParameters,
              data: _data,
              cancelToken: cancelToken,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SABnzbdResult<SABnzbdEmptyResult>.fromJson(
      _result.data!,
      (json) => SABnzbdEmptyResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
