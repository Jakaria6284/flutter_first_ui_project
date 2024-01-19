import 'package:firstproject/Tabs/burger.dart';
import 'package:firstproject/Tabs/donut.dart';
import 'package:firstproject/Tabs/pancake.dart';
import 'package:firstproject/Tabs/pizza.dart';
import 'package:firstproject/Utill/myTab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs=[
    //donat tab
    myTab(iconPath: 'assets/images/75.png'),


    //burger tab
    myTab(iconPath: 'assets/images/75.png'),

    //smoothie tab
    myTab(iconPath: 'assets/images/75.png'),

    //pancake tab
    myTab(iconPath: 'assets/images/75.png'),

    //pizza tab
    myTab(iconPath: 'assets/images/75.png')

  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading:
            Padding(
              padding: EdgeInsets.only(left: 10),
              child:IconButton(
                onPressed: (){
                print('kkk');
                },
                icon:Icon(
                Icons.menu,
                size: 34,
                ),

              ),
            ),
          actions: [

              Padding(
                padding: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: (){

                  },
                  icon:  Icon(
                    Icons.person,
                    size: 32,
                  ),

                ),
              ),

          ],
          ),
        body: Column(
         children: [
           //i want to eat

           Padding(
             padding: EdgeInsets.symmetric(horizontal: 19),
               child: Row(

                   children:[
                     Text('I want to eat ',style: TextStyle(fontSize: 18),),
                     Text('EAT ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)



                   ],)),
           SizedBox(
             height: 20,
           ),



           //tab bar
           TabBar(tabs: myTabs),



           //tab bar view

           Expanded(
               child: TabBarView(children: [

                 //donut pages
                 donut(),

                 //burger pages
                 burger(),

                 //pancake page
                 pancake(),

                 //pizz a pages
                 pizza()
               ],))
         ],
        ),

      ),
    );
  }
}

