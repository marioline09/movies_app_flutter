import 'package:dartz/dartz.dart';
import 'package:movie_app/movie/models/movie_detail_model.dart';
import 'package:movie_app/movie/models/movie_model.dart';

abstract class MovieRepository {
  Future<Either<String, MovieResponseModel>> getDiscover({int page = 1});
  Future<Either<String, MovieResponseModel>> getTopRated({int page = 1});
  Future<Either<String, MovieResponseModel>> getNowPlaying({int page = 1});
  Future<Either<String, MovieDetailModel>> getDetail({required int id});
}
