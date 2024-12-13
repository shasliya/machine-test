import 'package:api_integration/DIOAPI/Controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'customsnackbar.dart';

void main(){
  runApp(GetMaterialApp(home: dioHome()));
}
class dioHome extends StatelessWidget {

  DataController controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
        floatingActionButton: 
        Obx(()=>controller.isNetConnected.value
        ?FloatingActionButton(
            onPressed: (){
              controller.isListDown.value
                  ?controller.scrollToUp()
                  :controller.scrollToDown();
            },
        child: FaIcon(controller.isListDown.value
            ?FontAwesomeIcons.arrowUp
            :FontAwesomeIcons.arrowDown
        ),)
        :Container()),
      
      
      
        body: Obx(
      () => SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: controller.isNetConnected.value == true
              ? (controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : getDatahome())
              : Center(
                  child: Column(
                    children: [
                      Text("No internet Connection"),
                      MaterialButton(onPressed: () async {
                        if (await InternetConnectionChecker().hasConnection ==
                            true) {
                          controller.fetchData();
                        } else {
                          //custom snack bar used for creating customized snack bar . it place top of the screen
                          showCustomSnackBar(context);
                        }
                      })
                    ],
                  ),
                )),
    ));
  }

 RefreshIndicator getDatahome() {
    return RefreshIndicator(child: ScrollablePositionedList.builder(
        itemScrollController: controller.scrollController,
        itemCount: controller.datas.length,
        itemBuilder: (context,index)
    {
      var data=controller.datas[index];
      return Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green[400],
            child: Text(data.id.toString()),
          ),
          title: Text(data.title!),
          subtitle: Text(data.body!),
        ),
      );
    }),
        onRefresh: (){
      return controller.fetchData();
        });
 }
}
