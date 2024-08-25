import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/AddToCart/Class_Cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var CartProv = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(),
      body: CartProv.CartItems.length == 0
          ? Center(
              child:
                  Text("No items in the cart", style: TextStyle(fontSize: 30)))
          : ListView(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: CartProv.CartItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Text(
                          CartProv.CartItems[index].name,
                          style: const TextStyle(fontSize: 20),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              CartProv.remove(CartProv.CartItems[index]);
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                    );
                  },
                ),
                Center(
                  heightFactor: 50,
                  child: Text("Total Price: ${CartProv.TotalPrice}"),
                )
              ],
            ),
    );
  }
}
