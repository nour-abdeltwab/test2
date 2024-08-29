import 'package:flutter/material.dart';
import 'package:test2/components/cards_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Product {
  final String title1;
  final String title2;
  final String imagePath;
  final String price;

  Product(
      {required this.title1,
      required this.title2,
      required this.imagePath,
      required this.price});
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Product> products = [
    Product(
        title1: "External Catheter",
        title2: "Urinary Catheterization",
        imagePath: 'assets/bg.png',
        price: " 50.0"),
    Product(
        title1: "Urethral Catheter",
        title2: "Urinary Catheterization",
        imagePath: 'assets/logos.png',
        price: " 50.0"),
    Product(
        title1: "Surgical Scissors",
        title2: "Shose with nick",
        imagePath: 'assets/bg.png',
        price: "450.0"),
    Product(
        title1: "External Catheter",
        title2: "Urinary Catheterization",
        imagePath: 'assets/logos.png',
        price: " 50.0"),
    Product(
        title1: "Urethral Catheter",
        title2: "Urinary Catheterization",
        imagePath: 'assets/logos.png',
        price: " 50.0"),
    Product(
        title1: "Surgical Scissors",
        title2: "Shose with nick",
        imagePath: 'assets/bg.png',
        price: "450.0"),
  ];
  // final List<String> images = [
  //   'assets/bg.png',
  //   'assets/logos.png',
  //   'assets/bg.png',
  //   'assets/logos.png',
  //   'assets/bg.png',
  //   'assets/logos.png',
  // ];
  // final List<String> titles1 = [
  //   'External Catheter',
  //   'Urethral Catheter',
  //   'Surgical Scissors',
  //   'External Catheter',
  //   'Urethral Catheter',
  //   'Surgical Scissors',
  // ];

  // final List<String> titles2 = [
  //   'Urinary Catheterization',
  //   'Urinary Catheterization',
  //   'Shose with nick',
  //   'Urinary Catheterization',
  //   'Urinary Catheterization',
  //   'Shose with nick',
  // ];

  // final List<String> prices = [
  //   '50.0',
  //   '450.0',
  //   '450.0',
  //   '50.0',
  //   '450.0',
  //   '450.0',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending Products",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CardsItem(
                      img: products[index].imagePath,
                      title1: products[index].title1,
                      title2: products[index].title2,
                      price: products[index].price,
                    ),
                  ],
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
