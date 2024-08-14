import 'package:flutter/material.dart';
import 'package:test2/components/cards_item.dart';

class CardModel {
  final String imgPath;
  final String title1;
  final String title2;
  final String price;

  CardModel(
      {required this.imgPath,
      required this.title1,
      required this.title2,
      required this.price});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<CardModel> cards = List.generate(
    20,
    (index) => CardModel(
      imgPath: 'assets/images/img$index.png', // Replace with your image paths
      title1: 'Title $index',
      title2: 'Subtitle $index',
      price: '\$${index * 10}',
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: EdgeInsets.all(
                16), // Added padding to ensure space around the card
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CardsItem(
                      img: Image.asset(cards[index].imgPath),
                      title1: cards[index].title1,
                      title2: cards[index].title2,
                      price: cards[index].price,
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
