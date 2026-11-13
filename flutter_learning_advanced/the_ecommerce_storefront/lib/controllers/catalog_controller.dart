import 'package:flutter/foundation.dart'; // importing  the flutter foundation package i suppose to extend ChangeNotifier,
// but i don't see us using it here so idk its purpose
import '../models/product.dart'; // importing Product from models d

class CatalogController extends ChangeNotifier {
  // Private list holding our products, seeded with some default items
  // ok i see, i got a que tho, if this was a real store's data, which would have way more  products,
  // i get that we may steel need to write them by hand, unless we can like have a list of items maybe in a mk file, then we extract them i think using Maps? json files or whatever not sure,
  // to then take all of them inside a function maybe just for data then put it here,
  // instead of writing all lines of data her
  // yeah that's right
  final List<Product> _products = [
    Product(id: '1', title: 'Flutter Coding Book', price: 29.99),
    Product(id: '2', title: 'Dart Programming Mug', price: 12.50),
  ];

  // Public getter to safely expose the products to the screen
  // from my understanding we have getters and setters, we sue them to write functionality but in a variable form , without writing an actual function,
  // so here it just reads _products list, i don't know tho why we said get product => _products, ik that _products is the list's name and is with an undesrcore to keep it strictly for this function not global (private)
  // what i don't understand tho is do we have to write 'products' like the thing on the right of the arrow but without an underscore or is this a choosen prefrence not a syntax thing, and why exactly do we do it, wwhat is products anyway is it a funciton or a variable that we will use later?
  List<Product> get products => _products;
  // answer is: its not a variable nor a method its a getter, u call it like this controller.products, no (), like a variable,
  // and it has to be named after the _name right?(its standard industry act to be obv and ez to read) and it lets other files peek and see _products without changing it
}


































