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
        body: Container(
          color: Colors.amber,
          width: 900.0,
          height: 100.0,
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Text('Socialmarket för att köpa och sälja i Sverig!'),
        ),
      ),
    );
  }
}
