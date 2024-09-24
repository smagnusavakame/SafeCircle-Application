import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';
import 'package:safecircle/store/payment.dart';

class CommerceScreen extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Pepper Spray',
      price: 9.99,
      imageUrl: 'assets/products/pepper_spray.png',
    ),
    Item(
      name: 'Self-Defense Keychain',
      price: 5.99,
      imageUrl: 'assets/products/key_chain.png',
    ),
    Item(
      name: 'Personal Alarm',
      price: 7.99,
      imageUrl: 'assets/products/alarm.png',
    ),
    Item(
      name: 'Safety Whistle',
      price: 3.99,
      imageUrl: 'assets/products/whistle.png',
    ),
    Item(
      name: 'Stun Gun',
      price: 19.99,
      imageUrl: 'assets/products/taser.png',
    ),
    Item(
      name: 'Tactical Pen',
      price: 8.99,
      imageUrl: 'assets/products/pen.png',
    ),
    Item(
      name: 'Flashlight',
      price: 6.99,
      imageUrl: 'assets/products/flashlight.png',
    ),
    Item(
      name: 'Tracker',
      price: 12.99,
      imageUrl: 'assets/products/tracker.png',
    ),
    Item(
      name: 'Emergency Kit',
      price: 29.99,
      imageUrl: 'assets/products/kit.png',
    ),
    Item(
      name: 'Taser',
      price: 39.99,
      imageUrl: 'assets/products/taser.png',
    ),
  ];

  CommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBlack,
        title: const Text('Self Defense Store'),
        titleTextStyle: const TextStyle(color: kWhite, fontSize: 20),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentScreen()), //item: item
              );
            },
            child: Card(
              color: kWhite,
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      item.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '\$${item.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String name;
  final double price;
  final String imageUrl;

  Item({required this.name, required this.price, required this.imageUrl});
}
