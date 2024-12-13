
import 'package:api_integration/API_Integration/screens/Home/productTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/productController.dart';

void main(){
  runApp(GetMaterialApp(home: Producthome(),));
}
class Producthome extends StatelessWidget {
  final productController productcontroller =Get.put(productController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("products"),
      ),
      body: SizedBox(
        child: Obx((){
          if(productcontroller.isLoading.value){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return GridView.builder(itemCount: productcontroller.productList.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index){
                  return ProductTile(
                      productcontroller.productList[index]);

                });
          }
        }),
      ),
    );
  }
}