import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:fluttermoji/fluttermoji_assets/fluttermojimodel.dart';
import 'package:somtam/features/utils/fonts.dart';

import '../../productCard/presentration/indext.dart';
import '../../utils/config.dart';

class Proflie extends StatefulWidget {
  const Proflie({super.key});

  @override
  State<Proflie> createState() => _ProflieState();
}

class _ProflieState extends State<Proflie> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
   

        CircleAvatar(
                radius: 50,
                backgroundImage: const AssetImage('Images/xin ton.png'),
            ),
       // Image.asset(
             // 'Images/xin ton.png',
            //  width: 150,
             // height: 150,
              

              
          //  ),
      

        Padding(
          padding: const EdgeInsets.all(15.0),
        child:
        Text("Xin Tong An Food",
        
        style: TextStyle(fontFamily: bodyFont,
        fontSize: 18,
        fontWeight: FontWeight.normal),
        
        ),
      

        
        ),

      

      const Padding(padding: EdgeInsets.all(10.0),
      child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Column(children: [
            Text("7",
              style: TextStyle(fontWeight: FontWeight.w700,
              color: Colors.blue),
            ),
            Text("Recept",
              style: TextStyle(fontWeight: FontWeight.normal, 
              fontSize: 12),)],),

          Column(children: [
            Text("59",
              style: TextStyle(fontWeight: FontWeight.w700,
              color: Colors.blue),),
            Text("Produkter",
              style: TextStyle(fontWeight: FontWeight.normal, 
              fontSize: 12),)],),
          Column(children: [
            Text("2",
              style: TextStyle(fontWeight: FontWeight.w700,
              color: Colors.blue),),
          Text("Recension",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12),
          )],
          ),

       ],
        ),
      ),
        
        
        Padding(padding: const EdgeInsets.only(top: 5.0),
       child: DefaultTabController(
          length: 2, 
            initialIndex: 0,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.blue,
                  labelStyle: 
                  TextStyle(fontFamily: bodyFont,fontWeight: FontWeight.normal,),
                  
          tabs: const [
          Tab(
                  text: "Produkter",
                  icon: Icon(
                    Icons.store,
                    color: Colors.blue,
                    ),
                ),
          Tab(
                  text: "Erbjudande",
                  icon: Icon(
                    Icons.food_bank,
                    color: Colors.blue,
                    ),
                ),   
            ],
          ),
SizedBox(
  height: MediaQuery.of(context).size.height * 0.5,
  child: TabBarView(
    children: [
      GridView.builder(
          gridDelegate: 
          const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: (1 / 1.4),
            crossAxisCount: 2,
          ),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const ProductCard();
                  }),

          Padding(padding: EdgeInsets.all(80.0),
          child: EmptyWidget(
            image: null,
            packageImage: PackageImage.Image_1,
            title: 'Erbjudander',
            subTitle: 'Vi Kommer snart med erbjudande',
            titleTextStyle: const TextStyle(
              fontSize: 22,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
            subtitleTextStyle: const TextStyle(
              fontSize: 14,
              color: Colors.blue,
              fontWeight: FontWeight.w500,

            ),

          )
          )
          
                ]))
              ],
            )
          ),
        ),

      

            
        
      ],
    );
  }
}

