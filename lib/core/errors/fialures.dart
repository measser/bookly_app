import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class Failure {
  final String errMassage;

  Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure('Request ApiServer was canceled');
      case DioExceptionType.connectionError:if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error , Please try later');

      case DioExceptionType.unknown:
        return ServerFailure('Connection Error');
      default:
        return ServerFailure('Opps there was an Error ,Please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['massage']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , Please try later');
    } else {
      return ServerFailure('Opps there was an Error ,Please try again');
    }
  }
}
