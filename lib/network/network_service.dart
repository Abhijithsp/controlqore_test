import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../utils/constants/api_path.dart';



class NetworkService {
  var dio = Dio();

  Future<dynamic> doLogin(String mobileNo) async {
    try {

    } catch (e, stackTrace) {
      log(stackTrace.toString());

    }
  }
}
