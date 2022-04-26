import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseurl;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseurl, required this.token}) {
    baseUrl = appBaseurl;
    timeout = Duration(seconds: 30); //request time 30sec
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': token,
    };
  }

  //send server get request
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
