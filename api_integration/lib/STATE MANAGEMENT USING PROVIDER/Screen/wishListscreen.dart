
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/MovieProvider.dart';

class WishListScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var wishmovies = context.watch<movieProvider>().wishlistmovie;
    return Scaffold(
      body: ListView.builder(itemCount: wishmovies.length ,
          itemBuilder: (context, index){
            final wishMovie = wishmovies[index];
            return Card(
              child: ListTile(
                title:Text(wishMovie.title),
                subtitle: Text(wishMovie.time!),
                trailing: TextButton(onPressed: (){
                  context.read<movieProvider>().removeFromWishList(wishMovie);
                }, child: const Text("remove")),
              ),
            );
          }),
    );
  }
}
