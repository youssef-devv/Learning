import 'package:flutter/foundation.dart'; // same deal
import '../models/product.dart'; // same deal

class CartController extends ChangeNotifier {
  // Active state variable holding items in the cart
  final List<Product> _items = []; // i remember doing this with enterprise or whatever we  named it then in dart

  List<Product> get items => _items; // same deal

  // Computed property/logic: calculates total price dynamically
  double get totalPrice {
    // my que here tho, so now a getter is used in a function instead of a variable, when using it  do we do totalPrice(),
    // like a function, or does it always stay without () ---> always without
    // plus, here we didn't do => we wrote it like a normal function, why? could we have instead of doing return etc,
    // just do => etc --> yes can, its just easier to read with {body}
    // and what is .fold, and why 0, and what is this: (sum, item) => sum + item.price
    // and i just noticed it doesn't fully look like a method either ,no () just {} like a class
    return _items.fold(0, (sum, item) => sum + item.price);
    // fold(int i = 0, length el _items,=>sum+item.price da el body bt3 el for loop) is like a for loop in one line
    // (sum, item) [da k2no initialization brdo]
    // so do we write in brackets everything we will use in what is after the arrow? ---> yes
  }

  // Business logic method to modify state
  // a normal method, takes var product of type Product we wrote in Product model, so it holds (id, title, price)
  void addProductToCart(Product product) {
    _items.add(product); // so when adding this product to the list it has all three attributes in it
    notifyListeners(); // Tells any listening screen: "Data changed, redraw!" ---> yeah exactly, so,
    // do we stop using setStet bec this does its job,
    // and u mentioned multiple ways to notify is each for a different use,
    // and each way is connected to a class imported  from a specific package?
    // and do we only do one or multiple ways of notification through the app itself

    //---> we use notifyListeners() instead of setState, its better,
    // and then each state management library has its equivalent to notifyListeners()

  }
  void removeItem(int index) { // added this to remove items from cart
    _items.removeAt(index);
    notifyListeners(); // <--- THIS tells the AnimatedBuilder to redraw!
  }
}





























