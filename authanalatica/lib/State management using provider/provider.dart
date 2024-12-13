import 'dart:core';

import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'model.dart';

final List<Song> songlist = List.generate(
    100,
        (index) => Song(
        title: "Song $index", time: "${Random().nextInt(100) + 60} minutets"));

class SongProvider extends ChangeNotifier {

  final List<Song> _Song = songlist;

  List<Song> get Songs => _Song;

  final List<Song> wishlistSong = [];
  List<Song> get Songwishlist => wishlistSong;

  void addtoWishList(Song movieFromMainpage) {
    wishlistSong.add(movieFromMainpage);
    notifyListeners();
  }

  void removeFromWishList(Song removedSong) {
    wishlistSong.remove(removedSong);
    notifyListeners();
  }
}
