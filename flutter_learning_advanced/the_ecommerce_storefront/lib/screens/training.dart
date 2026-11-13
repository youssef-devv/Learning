import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:the_ecommerce_storefront/controllers/cart_controller.dart';
import 'package:the_ecommerce_storefront/controllers/catalog_controller.dart';
import 'package:the_ecommerce_storefront/main.dart';
import 'package:the_ecommerce_storefront/models/product.dart';
import 'package:the_ecommerce_storefront/screens/cart_screen.dart';
import 'package:the_ecommerce_storefront/screens/catalog_screen.dart';


class CartScreen extends StatelessWidget{
  final CartController cartController;
  const CartScreen({
    super.key,
    required this.cartController,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Shopping Cart'),
      ),
      body: AnimatedBuilder(animation: cartController, builder: (context, child){
        final items = cartController.items;
        if(items.isEmpty){
          return const Center(
           child:  Text('Your Cart Is Empty!'),
          );
        }
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context,index){
                      final item = items[index];
                      return ListTile(
                        title: Text(item.title),
                        subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                        trailing: IconButton(
                            onPressed: () {
                              items.removeAt(index);
                            },
                            icon: Icon(Icons.delete)
                        )
                      );
                    })
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('\$${cartController.totalPrice.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}