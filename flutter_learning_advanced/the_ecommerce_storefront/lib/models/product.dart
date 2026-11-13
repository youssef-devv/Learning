class Product { // Product class
  // the attributes
  final String id; //each product has an id
  final String title;//and a title(name)
  final double price;//and a price
  //everything set to final meaning it doesnt change after getting its value in runtime,
  // maximizing optimization not redrawing (rebuilding) them each time

  const Product({ // a constructor with every attribute required bec u cant have  a product miss any of these
    required this.id,
    required this.title,
    required this.price,
  });
}






























