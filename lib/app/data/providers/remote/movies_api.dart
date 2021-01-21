import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/movie.dart';

import '../../../utils/constants.dart';

class MoviesApi {
  final Dio _dio = Get.find<Dio>();

  Future<List<Movie>> getTopMovies() async {
    final response = await _dio.get(
      '/movie/top_rated',
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API,
      },
    );

    return (response.data['results'] as List)
        .map((e) => Movie.fromJson(e))
        .toList();
  }
}
