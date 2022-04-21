import 'package:lms/app/constants.dart';
import 'package:lms/data/data_source/remote_data_source.dart';
import 'package:lms/data/mapper/mapper.dart';
import 'package:lms/data/network/network_info.dart';
import 'package:lms/domain/model.dart';
import 'package:lms/data/request/request.dart';
import 'package:lms/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:lms/domain/repository.dart';

class RepositoryImplementation extends Repository {
  RemoteDataSource _remoteDataSource;
  NetworkInfo _networkInfo;
  RepositoryImplementation(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, StudentCreds>> studentLogin(
      StudentLoginRequest studentLoginRequest) async {
    final response;
    if (await _networkInfo.isConnected) {
      // safe to call API
      response = await _remoteDataSource.studentLogin(studentLoginRequest);
      return Right(response.toDomain());
    } else {
      // return connection error
      return Left(Failure(501, Constant.checkConnectivity));
    }
  }
}
