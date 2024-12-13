import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import '../Model/model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../Service/service.dart';

class DataController extends GetxController {
  @override
  void onInit() {
    fetchData();
    isNetConnected();
    super.onInit();
  }

  RxList<User> datas = RxList();
  RxBool isLoading = true.obs;
  RxBool isListDown = false.obs;
  RxBool isNetConnected = true.obs;
  var scrollController = ItemScrollController();

  //to check internet connection
  void isIntrnetConnected() async {
    isNetConnected.value = await InternetConnectionChecker().hasConnection;
  }

//fetch all the data from api
  fetchData() async {
    isNetConnected();
    isLoading.value = true;
    var response = await dioservice().getData();
    if (response.statusCode == 200) {
      response.data.forEach((data) {
        datas.add(User.fromJson(data));
      });
      isLoading.value = false;
    }
  }

//goto end the listview
  scrollToDown() {
    scrollController.scrollTo(
        index: datas.length,
        duration: const Duration(seconds: 4),
        curve: Curves.bounceInOut);
    isListDown.value = true;
  }

//goto top of the Listview
  scrollToUp() {
    scrollController.scrollTo(
        index: 0,
        duration: const Duration(seconds: 4),
        curve: Curves.slowMiddle);
    isListDown.value = false;
  }
}
