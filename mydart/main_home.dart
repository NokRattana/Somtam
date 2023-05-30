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
        body: const Center(
            child: Image(
          image: AssetImage('images/stm_login.png'),
        )),
      ),
    );
  }
}
