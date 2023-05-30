import 'package:flutter/material.dart';
import 'package:somtam/features/utils/config.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/subscribe");
      },
      child: const Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                  //height: 200,
                  //width: 200,
                  child: Image(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              )),
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 5.0),
                  tileColor: Color.fromARGB(255, 63, 161, 6),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    child: Text(
                      "S",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  title: Text(
                    "Shake Salad Kit- Som Tam",
                    style: TextStyle(color: Color.fromARGB(255, 241, 240, 234)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
