import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile With Lottie'),
      ),
      body: const Center(
        child: ExpansionTileWithLottie(),
      ),
    );
  }
}

class ExpansionTileWithLottie extends StatelessWidget {
  const ExpansionTileWithLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ExpansionTileCard(
          title: const Text(
            'Tap to Expand',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('See the animation!'),
          expandedTextColor: Colors.blue,
          // The content that will be shown when the card is expanded
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Lottie.network(
                      "https://lottie.host/51670457-7222-4fe8-ae8c-c149dbeb5783/GQNnuUBVuJ.json"),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      textStyle: const TextStyle(fontSize: 28),
                    ),
                    icon: const Icon(Icons.delivery_dining, size: 42),
                    label: const Text('Order Food'),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
