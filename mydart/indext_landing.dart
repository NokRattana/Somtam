import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:somtam/features/utils/constants.dart';
import 'package:somtam/features/utils/fonts.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: CircularText(
                  children: [
                    TextItem(
                      text: Text(
                        "SOM TAM ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: headlineFont),
                      ),
                      space: 15,
                      startAngle: -90,
                      startAngleAlignment: StartAngleAlignment.center,
                      direction: CircularTextDirection.clockwise,
                    ),
                    TextItem(
                      text: Text(
                        "HOT BOX MATKASSE",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: headlineFont),
                      ),
                      space: 10,
                      startAngle: 90,
                      startAngleAlignment: StartAngleAlignment.center,
                      direction: CircularTextDirection.anticlockwise,
                    ),
                  ],
                  radius: 90,
                  position: CircularTextPosition.outside,
                  backgroundPaint: Paint()
                    ..color = Color.fromARGB(244, 32, 172, 4),
                ),
              ),
              //Tagline//
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(tagLine,
                    style: TextStyle(
                        fontFamily: tagLineFont,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 238, 97, 3))),
              ),
              Text(
                description,
                style: TextStyle(
                    fontFamily: bodyFont,
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
            ]),
      )),
      bottomNavigationBar: //Button//
          Container(
        margin: const EdgeInsets.all(40),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: Text(
              landingAction,
              style: TextStyle(
                fontFamily: buttonFont,
                fontSize: 18,
                color: Color.fromARGB(255, 238, 97, 3),
              ),
            )),
      ),
      //End Button// ,
    );
  }
}
