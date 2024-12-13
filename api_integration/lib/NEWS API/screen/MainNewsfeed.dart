import 'package:api_integration/NEWS%20API/model/news%20model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../service/news_api_service.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [GetPage(name: '/', page: () => newsview())],
  ));
}

class newsview extends StatefulWidget {
  @override
  State<newsview> createState() => _newsviewState();
}

class _newsviewState extends State<newsview> {
  late Future<News> newsbody;

  @override
  void initState() {
    super.initState();
    final newsservice = NewsappService();
    newsbody = newsservice.getnews('sports');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEWS FEED'),
      ),
      body: FutureBuilder<News>(
        future: newsbody,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('error:error is ${snapshot.error}'),
            );
          }
          // else if (!snapshot.hasError || snapshot.data!.articles.isEmpty) {
          //   return Center(
          //     child: Text('No articles Found'),
          //   );
          // }
          else if (!snapshot.hasData || snapshot.data!.articles.isEmpty) {
            return Center(
              child: Text('No articles found'),
            );
          }

          else {
            final newsfeed = snapshot.data!.articles;
            print(newsfeed.length);
            return ListView.builder(
                itemCount: newsfeed.length,
                itemBuilder: (context, index) {
                  final feed = newsfeed[index];
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      // leading: feed.urlToImage != null
                      //     ? Image.network(
                      //         feed.urlToImage!,
                      //         width: 100,
                      //         fit: BoxFit.cover,
                      //       )
                      //     : null,
                      title: Text(feed.title),
                      subtitle: Text(feed.description ?? 'No description'),
                      onTap: () {},
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
