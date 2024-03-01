 

 import 'package:cinemapedia/domain/entities/movie.dart';

abstract class LocalStrorageRepository {

  Future<void> toggleFavotite( Movie movie);

  Future<bool> isMovieFavorite ( int movieId);

  Future<List<Movie>> loadMovies({ int limit = 10, offset = 2});

 }