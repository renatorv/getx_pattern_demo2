import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/movie.dart';

import '../../providers/remote/movies_api.dart';

class MoviesRepository {
  final MoviesApi _moviesApi = Get.find<MoviesApi>();

  Future<List<Movie>> getTopMovies() => _moviesApi.getTopMovies();
}