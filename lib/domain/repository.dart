import 'package:dartz/dartz.dart';
import 'package:lms/data/network/failure.dart';
import 'package:lms/data/request/request.dart';
import 'package:lms/domain/model.dart';

abstract class Repository {
  Future<Either<Failure, StudentCreds>> studentLogin(
      StudentLoginRequest studentLoginRequest);
}
