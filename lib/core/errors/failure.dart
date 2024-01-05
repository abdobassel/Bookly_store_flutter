import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection time out');

      case DioExceptionType.sendTimeout:
        return ServerFailure(' send time out');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive time out');
      case DioExceptionType.connectionError:
        return ServerFailure('connection error');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.unknown:
        return ServerFailure('connection error');
      case DioExceptionType.cancel:
        return ServerFailure('connection error');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad crificate');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('request is not found');
    } else if (statusCode == 500) {
      return ServerFailure('there is a problem with server , try later');
    } else if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('message');
    }
  }
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}
