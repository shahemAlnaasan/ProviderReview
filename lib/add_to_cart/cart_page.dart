import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_review/add_to_cart/class_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cartProv = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(),
      body: cartProv.cartItems.isEmpty
          ? const Center(
              child:
                  Text("No items in the cart", style: TextStyle(fontSize: 30)))
          : ListView(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cartProv.cartItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Text(
                          cartProv.cartItems[index].name,
                          style: const TextStyle(fontSize: 20),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              cartProv.remove(cartProv.cartItems[index]);
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                    );
                  },
                ),
                Center(
                  heightFactor: 50,
                  child: Text("Total Price: ${cartProv.totalPrice}"),
                )
              ],
            ),
    );
  }
}
