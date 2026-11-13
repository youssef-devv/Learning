import 'package:flutter/material.dart';//ok
import '../controllers/cart_controller.dart';//ok
import 'package:flutter/foundation.dart';


class CartScreen extends StatelessWidget {
  final CartController cartController;//ok

  const CartScreen({//ok
    super.key,
    required this.cartController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//ok
        title: const Text('Your Shopping Cart'),
      ),
      // Listen to the CartController so the screen updates when items are added
      body: AnimatedBuilder(//yup, listen to the controller when it updates
        animation: cartController,
        builder: (context, child) {//context , child ,yup
          final items = cartController.items; //so this essentially is items = items which gets _items from cartController

          if (items.isEmpty) { // check if items are empty
            return const Center(
              child: Text('Your cart is empty!'),
            );
          }

          return Column( // why return smth tho, how to know to write return
            //---> bec builder:(context,child) {needs a return inside of it}
            children: [ //ok
              Expanded(//ok this is expanded meaning it takes the full space left
                child: ListView.builder( // to build items u see at the moment
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index]; // to build each item in the list
                    return ListTile( // ok
                      title: Text(item.title),
                      subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                        trailing: IconButton(
                            onPressed: () {
                              final itemName = item.title; // added this line
                              cartController.removeItem(index); // and this
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Removed $itemName from cart!')),
                              );
                            },
                            icon: Icon(Icons.delete)
                        )
                    );
                  },
                ),
              ),
              // Bottom container displaying the dynamic total price
              Container( // why, return Column, and no return for Container?
                //---> bec they  live in children[just a list not a function doesn't need a return]
                padding: const EdgeInsets.all(20.0), //ok
                color: Colors.grey[200],
                child: Row( // that's all known already from out beginner apps
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      // Pulling the computed getter totalPrice directly from the controller!
                      '\$${cartController.totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}