import 'package:authanalatica/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: cartstore(),
//   ));
// }

class detailspage extends StatefulWidget {
  const detailspage({super.key});

  @override
  State<detailspage> createState() => _cartstoreState();
}

class _cartstoreState extends State<detailspage> {
  var cartindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [

          ],
        ),
        actions: [Icon(Icons.shopping_cart)],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cartindex,
          onTap: (tapindex) {
            setState(() {
              if (tapindex==cartindex){
                return null;
              }
              else
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
              }
              // cartindex = tapindex;

            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
//backgroundColor: Colors.white,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              label: " ",
              backgroundColor: Colors.green,),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              label: "Add to cart",
              backgroundColor: Colors.white,),
          ]),

      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(height: 200, width: 200,
                child: Image(image: AssetImage("assets/images/fruit11.jpeg"))),
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(alignment: Alignment.topLeft,
                child: Text("Casual Shirt", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Abc Products")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star_half, color: Colors.green,),
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    width: 100,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("_"),
                        Text("1"),
                        Text("+"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: Text("", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(alignment: Alignment.topLeft,
              child: Container(child: Text("About the product",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(child: Text(
                "ahfdsmbf,ldskh fgmysdg fvdsgnmf ndvnbcng fbdjshvcb ncbxxvcxvc xvcxvcxcmv bdcasvmfbn cvxgbnghvcv xbcngfz cxvcmgxf xvcnzxcm xvcmzg cxdfvdhgfl,dnbfvmhdsg ,fbmvs nydfgf, keslk.fz,sd,jf dnbvfjdb,c xbcv gzxcgvzxgb"),),
          )
        ],
      ),
    );
  }
}

