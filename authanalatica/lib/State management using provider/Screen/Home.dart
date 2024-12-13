import 'package:authanalatica/State%20management%20using%20provider/Screen/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => SongProvider(),
      child: MaterialApp(home: SongMain()),
    ),
  );
}
class SongMain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var wishsoongs = context.watch<SongProvider>().wishlistSong;
    var movies = context.watch<SongProvider>().Songs;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          ElevatedButton.icon(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WishListScreen())),
              label: Text(
                  "Wishlist (you have ${wishsoongs.length}songs on the list)"),
              icon: const Icon(Icons.favorite_border)),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            final currentMovie = movies[index];
            return Card(
              child: ListTile(
                title: Text(currentMovie.title),
                subtitle: Text(currentMovie.time!),
                trailing: IconButton(
                    icon: Icon(Icons.favorite,
                        color: wishsoongs.contains(currentMovie)
                            ? Colors.red
                            : Colors.black),
                    onPressed: () {
                      if (!wishsoongs.contains(currentMovie)) {
                        context
                            .read<SongProvider>()
                            .addtoWishList(currentMovie);
                      } else {
                        context
                            .read<SongProvider>()
                            .removeFromWishList(currentMovie);
                      }
                    }),
              ),
            );
          }))
        ],
      ),
    );
  }
}