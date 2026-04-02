import 'package:cinemapedia/presentation/views/views.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  static const name = 'home-screeen';
final int pageIndex;
  const Homescreen({
    super.key, 
    required this.pageIndex
    });

    final viewRoutes = const <Widget>[
      HomeView(),
      SizedBox(),
      FavoritesView()
    ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar:  CustomBottomNavigation(currentIndex: pageIndex),
      );
  }
}
