import 'package:lms/data/network/app_api.dart';
import 'package:lms/data/request/request.dart';
import 'package:lms/data/response/response.dart';

abstract class RemoteDataSource {
  Future<StudentCredResponse> studentLogin(
      StudentLoginRequest studentLoginRequest);
}

class RemoteDataSourceImplementer implements RemoteDataSource {
  AppServiceClient _appServiceClient;
  RemoteDataSourceImplementer(this._appServiceClient);
  @override
  Future<StudentCredResponse> studentLogin(
      StudentLoginRequest studentLoginRequest) async {
    return await _appServiceClient.studentLogin(
        studentLoginRequest.sid,
        studentLoginRequest.fullName,
        studentLoginRequest.email,
        studentLoginRequest.password);
  }
}
