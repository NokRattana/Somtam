import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:somtam/features/createSTM/presentraion/indext.dart';
import 'package:somtam/features/landing/presentration/indext.dart';
import 'package:somtam/features/productCard/presentration/indext.dart';
import 'package:somtam/features/profile/presentration/index.dart';
import 'package:somtam/features/utils/constants.dart';
import 'package:somtam/features/utils/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontFamily: titleFont),
        ),
        backgroundColor: Color.fromARGB(255, 167, 226, 5),
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Padding(
            padding: EdgeInsets.only(right: 5.0), 
          child: ActionChip(
              backgroundColor: Color.fromARGB(255, 80, 126, 5),
              label: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Icon(Icons.store_mall_directory),
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "0_",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: <TextSpan>[TextSpan(text: "Store")]))
                ],
              )),
              )
          
              //
              
        ],
      ),
      body: (currentIndex == 0)
      ? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: (1 / 1.4),
            crossAxisCount: 2,
          ),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const ProductCard();
          })
         // : const CreateSTM(),//

          
      : (currentIndex == 1) ? const CreateSTM() : const Proflie(),

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(bottomMenu[0]['icon']),
            title: Text(bottomMenu[0]['label']),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(bottomMenu[1]['icon']),
            title: Text(bottomMenu[1]['label']),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(bottomMenu[2]['icon']),
            title: Text(bottomMenu[2]['label']),
            textAlign: TextAlign.center,
          ),
        ],
        onItemSelected: (index) async {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
    return scaffold;
  }
}
