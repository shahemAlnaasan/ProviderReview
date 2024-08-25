import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/AddToCart/CartPage.dart';
import 'package:provider_review/AddToCart/Class_Cart.dart';
import 'package:provider_review/AddToCart/items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(name: "S24", Price: 999),
      Items(name: "Iphone 15 pro max", Price: 999)
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Home Page"),
        actions: [
          Row(
            children: [
              Text("${context.watch<Cart>().count}"),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  icon: Icon(Icons.add_shopping_cart))
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Consumer<Cart>(
            builder: (context, cart, child) {
              return Card(
                child: ListTile(
                  leading: Text(
                    items[index].name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        cart.add(items[index]);
                      },
                      icon: const Icon(Icons.add)),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
