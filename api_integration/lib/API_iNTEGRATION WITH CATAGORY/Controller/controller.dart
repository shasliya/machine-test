import 'package:get/get.dart';

import '../Service/api service.dart';


class productController extends GetxController{
   var mainCategories=<String>[].obs;
   var productByCategory= <Map<String,dynamic>>[].obs;
   var isLoadingCategories=true.obs;
   var isLoadingProducts=true.obs;
   @override
  void onInit(){
     super.onInit();
     fetchCategories();
   }
   Future< void> fetchCategories()async{
     try{
       isLoadingCategories(true);
       var response= await FakeStoreService().getMainCategories();
       mainCategories.assignAll(response);

     }
     finally{
       isLoadingCategories(false);
     }
   }
   Future< void> fetchProductsByCategories(category)async{
     try{
       isLoadingProducts(true);
       var response= await FakeStoreService().getProductCategory(category);
       productByCategory.assignAll(response);

     }
     finally{
       isLoadingCategories(false);
     }
   }
}