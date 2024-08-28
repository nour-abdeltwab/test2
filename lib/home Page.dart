import 'package:flutter/material.dart';
import 'package:test2/components/cards_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images = [
    'assets/bg.png',
    'assets/logos.png',
    'assets/bg.png',
    'assets/logos.png',
    'assets/bg.png',
    'assets/logos.png',
  ];
  final List<String> titles1 = [
    'External Catheter',
    'Urethral Catheter',
    'Surgical Scissors',
    'External Catheter',
    'Urethral Catheter',
    'Surgical Scissors',
  ];

  final List<String> titles2 = [
    'Urinary Catheterization',
    'Urinary Catheterization',
    'Shose with nick',
    'Urinary Catheterization',
    'Urinary Catheterization',
    'Shose with nick',
  ];

  final List<String> prices = [
    '50.0',
    '450.0',
    '450.0',
    '50.0',
    '450.0',
    '450.0',
  ];
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
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CardsItem(
                      img: images[index],
                      title1: titles1[index],
                      title2: titles2[index],
                      price: prices[index],
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
