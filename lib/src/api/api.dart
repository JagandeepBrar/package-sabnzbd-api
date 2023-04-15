import 'package:dio/dio.dart';
import 'package:sabnzbd_api/api.dart';
import 'package:sabnzbd_api/models.dart';
import 'package:sabnzbd_api/types.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi()
abstract class SABnzbdAPI {
  factory SABnzbdAPI(SABnzbdConfig config) {
    Dio dio = Dio(config.baseOptions);
    return _SABnzbdAPI(dio);
  }

  /// Pause the entire download queue.
  @GET('')
  Future<SABnzbdActionResult> pauseQueue({
    @Query('mode') String mode = 'pause',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Pause the entire download queue for X amount of minutes.
  @GET('')
  Future<SABnzbdActionResult> pauseQueueFor(
    @Query('value') int minutes, {
    @Query('mode') String mode = 'config',
    @Query('name') String action = 'set_pause',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Resume the entire download queue.
  @GET('')
  Future<SABnzbdActionResult> resumeQueue({
    @Query('mode') String mode = 'resume',
    @CancelRequest() CancelToken? cancelToken,
  });
}
