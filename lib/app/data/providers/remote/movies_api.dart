import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/movie.dart';

class MoviesApi {
  final Dio _dio = Get.find<Dio>();

  Future<List<Movie>> getTopMovies() async{
    
  }
}
