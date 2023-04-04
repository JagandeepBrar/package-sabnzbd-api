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
}
