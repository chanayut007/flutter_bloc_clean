import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean/domain/failure/failure.dart';

class FailureMessage extends Failure {
  final String msg;

  const FailureMessage(this.msg);

  factory FailureMessage.fromException(e) {
    try {
      if (e is DioException) {
        if (e.response?.statusCode != null &&
            e.response!.statusCode! >= 500) {
          return const FailureMessage("Something went wrong with API");
        }
        else if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.connectionError ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.sendTimeout
        ) {
          return const FailureMessage("Please check your internet");
        }
        else {
          final data = e.response?.data;

          if (data == null) {
            return const FailureMessage("Something went wrong with API (No message)");
          }

          final error = data! is String
                ? jsonDecode(data)["message"]
                : data["message"].toString();

          if (error is String) {
            return FailureMessage(error);
          } else if (error is List<String>) {
            return FailureMessage(error.first);
          }
        }
      }
      else {
        return const FailureMessage("Something went wrong");
      }
    } catch (_) {
      return const FailureMessage("Something went wrong");
    }
    return const FailureMessage("Something went wrong");
  }

  @override
  // TODO: implement props
  List<Object?> get props => [msg];

  @override
  String toString() => msg;
}