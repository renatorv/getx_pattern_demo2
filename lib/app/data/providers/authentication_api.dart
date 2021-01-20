import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/utils/constants.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationAPI {
  final Dio _dio = Get.find<Dio>();

  Future<RequestToken> newRequestToken() async {
    final response = await _dio.get(
      '/authentication/token/new',
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API,
      },
    );

    return RequestToken.fromJson(response.data); // parte 2 11 minutos
  }

  Future<RequestToken> validateWithLogin({
    @required String username,
    @required String password,
    @required String requestToken,
  }) async {
    final response = await _dio.post(
      '/authentication/token/validate_with_login',
      queryParameters: {
        'api_key': Constants.THE_MOVIE_DB_API,
      },
      data: {
        'username': username,
        'password': password,
        'request_token': requestToken,
      },
      options: Options(
        headers: {'Content-Type': 'application/json'},
      ),
    );
    return RequestToken.fromJson(response.data);
  }
}
