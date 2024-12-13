
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider.dart';

class WishListScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var wishSongs = context.watch<SongProvider>().wishlistSong;
    return Scaffold(
      body: ListView.builder(itemCount: wishSongs.length ,
          itemBuilder: (context, index){
            final wishSong = wishSongs[index];
            return Card(
              child: ListTile(
                title:Text(wishSong.title),
                subtitle: Text(wishSong.time!),
                trailing: TextButton(onPressed: (){
                  context.read<SongProvider>().removeFromWishList(wishSong);
                }, child: const Text("remove")),
              ),
            );
          }),
    );
  }
}
