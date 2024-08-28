import 'package:flutter/material.dart';

class CardsItem extends StatelessWidget {
  final String img;
  final String title1;
  final String title2;
  final String price;
  const CardsItem(
      {super.key,
      required this.img,
      required this.title1,
      required this.title2,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image.asset(img),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  title2,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(price),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Buy",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
