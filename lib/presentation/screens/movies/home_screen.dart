

import 'package:cinemapedia/config/constants/environment.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {

  static const name = 'home-screeen';

  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(Environment.theMovieDbKey),
      ),
    );
  }
}