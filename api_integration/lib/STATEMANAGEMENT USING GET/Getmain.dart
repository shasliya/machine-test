import 'package:api_integration/STATEMANAGEMENT%20USING%20GET/Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
void main()
{
  runApp(GetMaterialApp(home:Getmain() ,));
}

class Getmain extends StatelessWidget {
  const Getmain({super.key});

  @override
  Widget build(BuildContext context) {
    //creating controller class variable
    final CountController controller=Get.put(CountController());
    return Scaffold(
appBar: AppBar(title: Text("Counter example"),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Text("COUNT= ${controller.count}")),
            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              controller.increment();
            }, child: const Text("Increment")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              controller.decrement();
            }, child: const Text("Decrement")),
          ],
        )
      ),
    );
  }
}
