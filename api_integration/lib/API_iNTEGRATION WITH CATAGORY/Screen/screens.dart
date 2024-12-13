import 'package:api_integration/API_iNTEGRATION%20WITH%20CATAGORY/Screen/secondScreen.dart';
import 'package:api_integration/API_iNTEGRATION%20WITH%20CATAGORY/Service/api%20service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
void main()
{
  runApp(GetMaterialApp(initialRoute: '/',
  getPages: [GetPage(name: '/', page: ()=>CategoryScreen()),
    GetPage(name: '/CategoryDetailsScreen', page: ()=>CategoryDetailsScreen()),
  ],));
}
class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final FakeStoreService fakeStoreService=FakeStoreService();
    return Scaffold(
      appBar: AppBar(title: Text("All Categories"),),
      body: FutureBuilder<List<String>>(future: fakeStoreService.getMainCategories(),
          builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child:CircularProgressIndicator() );
        }
        else if(snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error}'),);
        }
        else
          {
          List<String>maincategories=snapshot.data!;
          return ListView.builder(
              itemCount: maincategories.length,

              itemBuilder: (context,index)
              {
                String category=maincategories[index];
                return ListTile(title: Text(category),
                  onTap: (){
                  Get.toNamed('/CategoryDetailsScreen',arguments: category);

                  },);

              });

          }
          }),
    );
  }
}
