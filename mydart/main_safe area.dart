import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Somtam Market Place'),
          ),
          backgroundColor: Color.fromARGB(255, 6, 119, 11),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.amber,
            width: 150.0,
            height: 150.0,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            margin: EdgeInsets.all(150.0),
            child: Text('Socialmarket för att köpa och sälja i Sverig!'),
          ),
        ),
      ),
    );
  }
}
