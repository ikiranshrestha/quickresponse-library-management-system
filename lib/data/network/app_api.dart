import 'package:dio/dio.dart';
import 'package:lms/app/constants.dart';
import 'package:lms/data/response/response.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("select-all-student-creds.php?sid=23")
  Future<StudentCredResponse> login();
}
