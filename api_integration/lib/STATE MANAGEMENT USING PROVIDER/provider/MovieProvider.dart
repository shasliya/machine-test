import 'dart:core';

import 'dart:math';

import 'package:api_integration/STATE%20MANAGEMENT%20USING%20PROVIDER/Model/Model.dart';
import 'package:flutter/cupertino.dart';

final List<Movies> movielist = List.generate(
    100,
    (index) => Movies(
        title: "Movie $index", time: "${Random().nextInt(100) + 60} minutets"));

class movieProvider extends ChangeNotifier {
  //add auto generated list to this variable
  final List<Movies> _movie = movielist;
  //values accessible through this variable
  List<Movies> get movies => _movie;
  //store wishlisted movies
  final List<Movies> wishlistmovie = [];
  List<Movies> get moviewishlist => wishlistmovie;

  void addtoWishList(Movies movieFromMainpage) {
    wishlistmovie.add(movieFromMainpage);
    notifyListeners();
  }

  void removeFromWishList(Movies removedMovie) {
    wishlistmovie.remove(removedMovie);
    notifyListeners();
  }
}
