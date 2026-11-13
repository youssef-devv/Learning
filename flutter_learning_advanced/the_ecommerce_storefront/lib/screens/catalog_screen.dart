import 'package:flutter/material.dart'; // done
import '../controllers/catalog_controller.dart'; // done
import '../controllers/cart_controller.dart'; // done
import 'cart_screen.dart'; // not done yet

class CatalogScreen extends StatelessWidget {
  final CatalogController catalogController; // final as i said before why, a que tho, did we do final CatalogController catalogController
  // instead of doing final CatalogController catalogController = CatalogController() ?
  // ---> bec it would rebuild it each time erasing older data
  // + i just noticed in catalogController page we didn't add a constructor to the class CatalogController(), why is that?
  final CartController cartController;

  const CatalogScreen({ // constructor
    super.key, // from StatelessWidget get its key with a super
    // our stuff
    required this.catalogController,
    required this.cartController,
  });

  @override
  Widget build(BuildContext context) { // to display anything we do buildContext, well, to build stuff
    return Scaffold( // our skeleton
      appBar: AppBar( // the top app bar, ( like nav bar in web dev but doesn't need to have nav links)
        title: const Text('Store Catalog'), // whats written at the top
        actions: [ // actions is new to me, it seems to look like children inside Column
          // similar, maps these 'actions' on the right side of the sidebar horizontally
          // Button to navigate to the Cart Screen
          IconButton(
            icon: const Icon(Icons.shopping_cart), // a set icon in material package .shopping_cart,
            // like delete and add and reset for the counter app, just an icon
            // after pressing it, take us to cartScreen page(navigation)
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cartController: cartController),
                ),
              );
            },
          ),
        ],
      ),
      // We use AnimatedBuilder to listen to the catalogController if it ever updates
      body: AnimatedBuilder( // the body of the scaffold
        animation: catalogController, // i don't get why we assigned it to datalogController
        builder: (context, child) { // what does builder: take ? why (context, child)
          // context: literally flutter knowing the context of where the widget lives in the tree
          // umm, just accept it, its rarely used for dynamic lists but required for this function
          final products = catalogController.products; // here we use our getter products for this one to access _products

          return ListView.builder( // so, doesn't the icon from the lined before appear already or not?
            // ListView.builder builds items u see on screen at any given moment, doesn't try building all list items at once
            // like why liseView.builder is needed idk what it adds to the conversation really
            itemCount: products.length, // the number of items is number of products list length
            itemBuilder: (context, index) { // again, itemBuilder this time (context, index) again, why?
              // context: done
              // index: loop thro the list items and build it
              final product = products[index]; // product = products[at this index]
              return ListTile( // what is ListTile ?
                // instead of coding Row u do this and add title, subtitle, leading (on the left) , trailing (on the right)
                title: Text(product.title),
                subtitle: Text('\$${product.price.toStringAsFixed(2)}'), // toString() ik turns nums to strings,
                // but what is asFixed(2) ? ---> displaying to 2 decimal places
                trailing: ElevatedButton( // trailing? ---> on the right
                  onPressed: () {
                    // Call the controller method to modify state!
                    cartController.addProductToCart(product); //so, cartController is a list?
                    //---> no an instance of CartController class we made earlier
                    // and what is addProductToCart anyway,
                    // i get what its doing here adds the thing in brackets to the thing,
                    // but where was this defined anyway how do we get it?
                    //---> a function in cart_controller.dart that's why we imported it

                    // Show a quick snackBar confirmation
                    //what is a snackBar confirmation?
                    // and what are we exactly doing here?
                    //---> a pop up notification like a light snackBar whilst browsing the app,
                    // says this msg then goes fastly after
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Added ${product.title} to cart!')),
                    );
                  },
                  child: const Text('Add'), // the text in the elevated button on screen will say 'Add'
                ),
              );
            },
          );
        },
      ),
    );
  }
}