import 'package:flutter/material.dart';

class myTab extends StatelessWidget {
  final String iconPath;
  const myTab({super.key,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
    
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12)
      ),

      child: Image.asset(iconPath
     ),

    ),
    );
  }
}
