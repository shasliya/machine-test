import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: listseprexample2(),));
}
class listseprexample2 extends StatelessWidget {
 var month=["jan","feb","mar","april","may","june","july","aug","sep","oct","nov","dic"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
          return Card(
              child: Text(month[index],)
          );},

          separatorBuilder: (context,index) {
            if (index % 3 == 0) {
              return Card(
                child: Container(color: Colors.red,
                  child: Text("Advertisment",
                  ),
                ),
              );
            }
            else {
              return SizedBox();
            }

          },
    itemCount: month.length,
      ),
    );
  }
}
