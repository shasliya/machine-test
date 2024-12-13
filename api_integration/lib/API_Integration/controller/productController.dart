import 'package:api_integration/API_Integration/serviece/api%20serviece.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class productController extends GetxController{
  //obs observable
  var isLoading= true.obs;
  var productList =[].obs;
  @override
  void onInit(){
    getProducts();
    super.onInit();

  }

  void getProducts() async{
    try{
      isLoading(true);
      var products=await HttpService.fetchProductus();
      if(products!=null){
        productList.value=products;
      }
    }
    catch(e)
    {
      print(e);
    }
    finally{
      isLoading(false);
    }
  }

}