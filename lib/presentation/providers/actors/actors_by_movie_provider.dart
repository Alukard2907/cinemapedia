import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsByMovieProvider = StateNotifierProvider<ActorsByMoviNotifier, Map<String,List<Actor>>>((ref){
  final actorsRepository = ref.watch( actorsRepositoryProvider );
  return ActorsByMoviNotifier(getActors: actorsRepository.getActorsByMovie);
});
  

typedef GetActorsCallback = Future<List<Actor>>Function( String movieId );

class ActorsByMoviNotifier extends StateNotifier<Map<String,List<Actor>>>{
  final GetActorsCallback getActors;
  ActorsByMoviNotifier({required this.getActors}) : super({});
  
  Future<void> loadActors( String movieId)async{
    if ( state[movieId] != null ) return; 
    final List<Actor> actors = await getActors(movieId);
    state = {...state, movieId: actors};
  }
}