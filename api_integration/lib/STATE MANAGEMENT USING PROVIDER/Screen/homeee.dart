import 'package:api_integration/STATE%20MANAGEMENT%20USING%20PROVIDER/Screen/wishListscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movieprovider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => movieProvider(),
      child: MaterialApp(home: MovieMain()),
    ),
  );
}
class MovieMain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var wishmovies = context.watch<movieProvider>().wishlistmovie;
    var movies = context.watch<movieProvider>().movies;
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WishListScreen())),
              label: Text(
                  "Wishlist (you have ${wishmovies.length}movies on the list)"),
              icon: const Icon(Icons.favorite_border)),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            final currentMovie = movies[index];
            return Card(
              child: ListTile(
                title: Text(currentMovie.title),
                subtitle: Text(currentMovie.time!),
                trailing: IconButton(
                    icon: Icon(Icons.favorite,
                        color: wishmovies.contains(currentMovie)
                            ? Colors.red
                            : Colors.black),
                    onPressed: () {
                      if (!wishmovies.contains(currentMovie)) {
                        context
                            .read<movieProvider>()
                            .addtoWishList(currentMovie);
                      } else {
                        context
                            .read<movieProvider>()
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