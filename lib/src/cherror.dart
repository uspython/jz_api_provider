/*
 * @Author: jeffzhao
 * @Date: 2019-03-20 15:31:17
 * @Last Modified by: jeffzhao
 * @Last Modified time: 2019-04-01 16:13:41
 * Copyright Zhaojianfei. All rights reserved.
 */

import 'package:dio/dio.dart';

class CHError extends DioError {
  CHError({this.message, this.statusCode, this.codeString}) : super() {
    super.message = message;
  }

  CHError.fromJson(Map<String, dynamic> json)
      : message = json['reason'].toString(),
        codeString = json['code_string'].toString(),
        statusCode = int.parse(json['code_number'].toString()) {
    super.message = message;
  }

  CHError.fromDioError(DioError error)
      : super(
            response: error.response,
            request: error.request,
            message: error.message,
            type: error.type,
            error: error.error,
            stackTrace: error.stackTrace) {
    message = error.message;
    statusCode = error.response?.statusCode ?? 0x01;
    codeString = '';
  }

  @override
  String message;

  int statusCode;

  String codeString;
}

class CHErrorEnum {
  static const String serviceFailure = '10066329'; // 0x999999
  static const String tokenExpired = '10008';
  static const String invalidToken = '10006';
  static const String nullToken = '10005';
  static const String refreshTokenFailed = '10007';
}
