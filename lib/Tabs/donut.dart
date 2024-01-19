import 'package:firstproject/Tile/donutTile.dart';
import 'package:flutter/material.dart';
class donut extends StatelessWidget {
  List donutonSale=[
    ["ice cream","36",Colors.blue,"assets/images/75.png"],
    ["ice cream","36",Colors.amber,"assets/images/75.png"],
    ["ice cream","36",Colors.brown,"assets/images/75.png"],
    ["ice cream","36",Colors.red,"assets/images/75.png"]
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutonSale.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
      return donutTile(
          donutFlavour:donutonSale[index][0] ,
          donutPrice: donutonSale[index][1],
          donutColor: donutonSale[index][2],
          imageName: donutonSale[index][3]);
    });
  }
}