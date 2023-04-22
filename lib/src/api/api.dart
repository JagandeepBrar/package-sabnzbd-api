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

  /// Add an NZB by supplying a URL to the NZB file.
  @GET('')
  Future<SABnzbdActionResult> addNZBUrl(
    @Query('name') String url, {
    @Query('nzbname') String? name,
    @Query('password') String? password,
    @Query('cat') String? category,
    @Query('script') String? script,
    @Query('priority') SABnzbdPriority? priority,
    @Query('pp') SABnzbdPostProcessing? postProcessing,
    @Query('mode') String mode = 'addurl',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Add an NZB by supplying the NZB file byte data.
  @POST('')
  Future<SABnzbdActionResult> addNZBFile(
    @Part(name: 'name', fileName: 'nzb') List<int> file,
    @Query('nzbname') String name, {
    @Query('password') String? password,
    @Query('cat') String? category,
    @Query('script') String? script,
    @Query('priority') SABnzbdPriority? priority,
    @Query('pp') SABnzbdPostProcessing? postProcessing,
    @Query('mode') String mode = 'addfile',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Add an NZB by supplying a local path to the NZB on the host filesystem.
  @GET('')
  Future<SABnzbdActionResult> addNZBLocalFile(
    @Query('name') String path, {
    @Query('nzbname') String? name,
    @Query('password') String? password,
    @Query('cat') String? category,
    @Query('script') String? script,
    @Query('priority') SABnzbdPriority? priority,
    @Query('pp') SABnzbdPostProcessing? postProcessing,
    @Query('mode') String mode = 'addlocalfile',
    @CancelRequest() CancelToken? cancelToken,
  });

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

  ///Remove any set queue completion action.
  @GET('')
  Future<SABnzbdActionResult> removeCompleteAction({
    @Query('value') String completeAction = '',
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'change_complete_action',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Remove any set speed limit and utilize the full line speed.
  @GET('')
  Future<SABnzbdActionResult> removeSpeedLimit({
    @Query('value') String limit = '',
    @Query('mode') String mode = 'config',
    @Query('name') String action = 'speedlimit',
  });

  /// Resume the entire download queue.
  @GET('')
  Future<SABnzbdActionResult> resumeQueue({
    @Query('mode') String mode = 'resume',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Restart the instance of SABnzbd.
  @GET('')
  Future<void> restartInstance({
    @Query('mode') String mode = 'restart',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Shutdown the instance of SABnzbd.
  @GET('')
  Future<void> shutdownInstance({
    @Query('mode') String mode = 'shutdown',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set the queue completion action.
  @GET('')
  Future<SABnzbdActionResult> setCompleteAction(
    @Query('value') SABnzbdCompleteAction completeAction, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'change_complete_action',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set the queue line speed limit.
  ///
  /// If a number value is passed in then the speed limit is so to the value as a percentage.
  /// To set the speed limit to a specific KB/s or MB/s limit, suffix the number with `K` or `M` respectively.
  @GET('')
  Future<SABnzbdActionResult> setSpeedLimit(
    @Query('value') String limit, {
    @Query('mode') String mode = 'config',
    @Query('name') String action = 'speedlimit',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Sort the queue by the given type in the given direction.
  @GET('')
  Future<SABnzbdActionResult> sortQueue(
    @Query('sort') SABnzbdSortType sortType,
    @Query('dir') SABnzbdSortDirection direction, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'sort',
    @CancelRequest() CancelToken? cancelToken,
  });
}
