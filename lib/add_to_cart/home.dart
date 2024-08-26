import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/add_to_cart/cart_page.dart';
import 'package:provider_review/add_to_cart/class_cart.dart';
import 'package:provider_review/add_to_cart/items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(name: "S24", price: 999),
      Items(name: "Iphone 15 pro max", price: 999)
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
