import 'package:api_integration/STATE%20MANAGEMENT%20USING%20PROVIDER/provider/MovieProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class mainpage extends StatelessWidget {
//   var wishmovies=context.watch<movieProvider>().moviewishlist;
//   var homemovies=context.watch<movieProvider>().movies;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Movies"),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//          ElevatedButton.icon(
//              onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WishlistSCreen())),
//              icon:const Icon(Icons.favorite_border_outlined),
//            label: Text("GoTo WishList ${wishmovies.length}"),),
//           Expanded(child: ListView.builder(
//             itemCount: homemovies.length,
//               itemBuilder: (context,index){
//               //movies are list<map> here currentMovie is now map
//                 final currentMovie=homemovies[index];
//                 return Card(
//                   child:ListTile(
//                     title: Text(currentMovie.title),
//                       subtitle: Text(currentMovie.time!),
//                     trailing: IconButton(
//
//                         icon: Icon(Icons.favorite_border_outlined,
//                                 color: wishmovies.contains(currentMovie)
//                                     ? Colors.red
//                                     : Colors.black),
//                              onPressed: (){
//     if (!wishmovies.contains(currentMovie)) {
//     context
//         .read<MovieProvider>()
//         .addToWishList(currentMovie);
//     } else {
//     context
//         .read<MovieProvider>()
//         .removeFromWishList(currentMovie);
//     }
//
//     ),
//
//
//                       }),
//
//
//                   ) ,
//                 );
//               }))
//         ],
//       ),
//     );
//   }
// }
