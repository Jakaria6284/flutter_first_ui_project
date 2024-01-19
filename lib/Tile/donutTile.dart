import 'package:flutter/material.dart';
class donutTile extends StatelessWidget {
  final String donutFlavour;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const donutTile({super.key,

    required this.donutFlavour,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName


  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(

        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               Padding(
                 padding: EdgeInsets.all(1),
                 child: Container(
                   padding: EdgeInsets.all(12),
                   child: Text('\$'+ donutPrice,
                   style: TextStyle(fontWeight: FontWeight.bold),),
                   decoration: BoxDecoration(
                     color: donutColor[100],
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(12))
                     
                   ),
                 ),
               )
                
              ],
            ),
            Image.asset(imageName),
            SizedBox(
              height: 20,
            ),
            Text(donutFlavour,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
          ],
        ),
        
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
