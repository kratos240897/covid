// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

class ApiService {
  var dio = Dio(BaseOptions(
      contentType: 'application/json',
      ));

  void addInterceptor() {
    dio.interceptors.add(LoggyDioInterceptor());
  }

  Future<Response> getRequest(
      String url, Map<String, dynamic> query) async {
    try {
      Response response;
      response = await dio.get(url, queryParameters: query);
      return response;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }
}