import 'package:dio/dio.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/utils/constants.dart';

class AuthenticationAPI {
  final Dio _dio;

  AuthenticationAPI(this._dio);

  Future<RequestToken> newRequestToken() async {
    final Response response = await _dio.get(
      '/authentication/token/new',
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API,
      },
    );
    print('\n\n');
    print(response.data);
    return RequestToken.fromJson(response.data); // parte 2 11 minutos
  }
}
