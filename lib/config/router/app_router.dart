import 'package:cinemapedia/presentation/screens/screns.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes:[
    GoRoute(
      path: '/home/:page',
      name: Homescreen.name,
      builder: (context, state){
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');
        return Homescreen(pageIndex: pageIndex);
      },

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