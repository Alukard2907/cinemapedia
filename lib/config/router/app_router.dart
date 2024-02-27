import 'package:cinemapedia/presentation/screens/screns.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes:[
    GoRoute(
      path: '/',
      name: Homescreen.name,
      builder: (context, state) => const Homescreen(),

      routes: [
        GoRoute(
      path: 'movie/:id',
      name: MovieScreen.name,
      builder: (context, state) { 
       final movieId = state.pathParameters['id'] ?? 'no_id';
       return   MovieScreen(movieId: movieId);
       },
      ),
      ]
      ),
    
  ]
);