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
  Future<SABnzbdResult<SABnzbdEmptyResult>> addNZBUrl(
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
  Future<SABnzbdResult<SABnzbdEmptyResult>> addNZBFile(
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
  Future<SABnzbdResult<SABnzbdEmptyResult>> addNZBLocalFile(
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

  /// Move a queue job above the destination job.
  @GET('')
  Future<SABnzbdResult<SABnzbdSwitchResult>> moveJob(
    @Query('value') String nzoId,
    @Query('value2') String destinationNzoId, {
    @Query('mode') String mode = 'switch',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Move a queue job to a specific index.
  @GET('')
  Future<SABnzbdResult<SABnzbdSwitchResult>> moveJobToIndex(
    @Query('value') String nzoId,
    @Query('value2') int index, {
    @Query('mode') String mode = 'switch',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Pause a single queue job.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> pauseJob(
    @Query('value') String nzoId, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'pause',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Pause the entire download queue.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> pauseQueue({
    @Query('mode') String mode = 'pause',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Pause the entire download queue for X amount of minutes.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> pauseQueueFor(
    @Query('value') int minutes, {
    @Query('mode') String mode = 'config',
    @Query('name') String action = 'set_pause',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Purge items from the queue.
  ///
  /// If no search query is supplied, all jobs will be purged.
  /// Set `deleteFiles` to 1 to also delete the associated files from the host filesystem.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> purgeQueue(
    @Query('search') String? query, {
    @Query('del_files') int deleteFiles = 0,
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'purge',
    @CancelRequest() CancelToken? cancelToken,
  });

  ///Remove any set queue completion action.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> removeCompleteAction({
    @Query('value') String completeAction = '',
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'change_complete_action',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Remove a single queue job.
  ///
  /// You can optionally pass in multiple jobs to remove by concatenating the NZO IDs with a comma.
  /// Set `deleteFiles` to 1 to also delete the associated files from the host filesystem.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> removeJob(
    @Query('value') String nzoId, {
    @Query('del_files') int deleteFiles = 0,
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'delete',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Remove any set speed limit and utilize the full line speed.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> removeSpeedLimit({
    @Query('value') String limit = '',
    @Query('mode') String mode = 'config',
    @Query('name') String action = 'speedlimit',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Resume a single queue job.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> resumeJob(
    @Query('value') String nzoId, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'resume',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Resume the entire download queue.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> resumeQueue({
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
  Future<SABnzbdResult<SABnzbdEmptyResult>> setCompleteAction(
    @Query('value') SABnzbdCompleteAction completeAction, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'change_complete_action',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set a job's category.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobCategory(
    @Query('value') String nzoId,
    @Query('value2') String category, {
    @Query('mode') String mode = 'change_cat',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set a job's post-processing options.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobPostProcessingOptions(
    @Query('value') String nzoId,
    @Query('value2') SABnzbdPostProcessing option, {
    @Query('mode') String mode = 'change_opts',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set a job's category.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobPriority(
    @Query('value') String nzoId,
    @Query('value2') SABnzbdPriority priority, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'priority',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set a job's post-processing script.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> setJobScript(
    @Query('value') String nzoId,
    @Query('value2') String script, {
    @Query('mode') String mode = 'change_script',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Set the queue line speed limit.
  ///
  /// If a number value is passed in then the speed limit is so to the value as a percentage.
  /// To set the speed limit to a specific KB/s or MB/s limit, suffix the number with `K` or `M` respectively.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> setSpeedLimit(
    @Query('value') String limit, {
    @Query('mode') String mode = 'config',
    @Query('name') String action = 'speedlimit',
    @CancelRequest() CancelToken? cancelToken,
  });

  /// Sort the queue by the given type in the given direction.
  @GET('')
  Future<SABnzbdResult<SABnzbdEmptyResult>> sortQueue(
    @Query('sort') SABnzbdSortType sortType,
    @Query('dir') SABnzbdSortDirection direction, {
    @Query('mode') String mode = 'queue',
    @Query('name') String action = 'sort',
    @CancelRequest() CancelToken? cancelToken,
  });
}
