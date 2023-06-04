import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:somtam/features/utils/fonts.dart';

import '../../utils/config.dart';
import '../../utils/constants.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({super.key});

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    favorite = !favorite;
                  });
                },
                icon: Icon((favorite == true)
                    ? Icons.favorite
                    : Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(somTitle,
                  style: TextStyle(
                      color: Color.fromARGB(255, 109, 199, 7),
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      fontFamily: title)),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  lorem(paragraphs: 1, words: 50),
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: bodyFont,
                      color: Colors.black54),
                )),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "RECEPT AV:",
                      style: TextStyle(fontFamily: bodyFont),
                    ),
                    const Spacer(),
                    ActionChip(
                      label: Text(
                        "Nuan Chana",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: bodyFont,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                      backgroundColor: Colors.amber,
                    )
                  ],
                ))
          ],
        )),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 233, 229, 10),
          padding: const EdgeInsets.only(bottom: 40.0, right: 20.0, left: 20.0),
          child: Row(
            children: [
              Text(
                "95 kr/2 person",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: bodyFont,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right_rounded,
                    color: Colors.black54,
                    size:50,
                    ),
                 
                  
                  label: Text("Subscribe",style: TextStyle(fontFamily: buttonFont,fontSize: 20,color: Colors.black54),))
            ],
          ),
        ));
  }
}
