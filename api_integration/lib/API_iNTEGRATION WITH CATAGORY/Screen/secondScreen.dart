import 'package:api_integration/API_iNTEGRATION%20WITH%20CATAGORY/Service/api%20service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FakeStoreService fakeStoreService=FakeStoreService();
    final String selectedCategory= Get.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("$selectedCategory Ctegory"),),
      body: FutureBuilder<List<Map<String,dynamic>>>
        (future:fakeStoreService.getProductCategory(selectedCategory),
          builder: (context,snapshot)
      {
        if(snapshot.connectionState==ConnectionState.waiting)
          {
            return Center(child: CircularProgressIndicator(),);
          }
        else if(snapshot.hasError)
          {
            return Center(child: Text('Error: ${snapshot.error}'),);
          }
        else
          {
            List<Map<String,dynamic>>products=snapshot.data!;
            return ListView.builder(
                itemCount: products.length,

                itemBuilder: (context,index)
            {
              Map<String, dynamic>product= products[index];
              return ListTile(title: Text(product['title']),
              subtitle: Text(product['description']),);

            });

          }
      }
      ),
    );
  }
}
