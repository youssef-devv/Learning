import 'package:flutter/material.dart';//ok
import 'controllers/catalog_controller.dart';//to instantiate from it an object
import 'controllers/cart_controller.dart';//this too
import 'screens/catalog_screen.dart';//the homepage, we didnt need to inprt the other screen,
// bec after going to the catalog one, we can navigate to the other one from it directly
//but i think we will need to add a navigator.pop to go back from the car_screen to the homepage again
//AppBar: Flutter adds a back button (<-) automatically when you use Navigator.
// push to open a new screen on top of an existing one.
// So your CartScreen will get a back button out of the box without you even having to write explicit Navigator.pop code!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate our controllers ONCE at the very top of the app
    // ok so, once bec we wont rebuild them again anyway, so we do it normally
    final catalogController = CatalogController();
    final cartController = CartController();

    return MaterialApp(
      debugShowCheckedModeBanner: false, // to remove debug banner at the top right of starter apps
      title: 'Storefront Architecture Demo',// title
      theme: ThemeData( // the theme of the app
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // used material 3 , the latest one to date
      ),
      // Set our CatalogScreen as the home route, passing our live controllers into it
      home: CatalogScreen( // our homepage is the catalogScreen which required taking these two which we instantiated above
        catalogController: catalogController,
        cartController: cartController,
      ),
    );
  }
}






















