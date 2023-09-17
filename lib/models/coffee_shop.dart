import 'package:cofeeshop/models/coffee.dart';

class CoffeeShop {
  // coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: "3.50",
      imagePath: 'lib/images/black.png',
    ),
    Coffee(
      name: 'Latte',
      price: "2.50",
      imagePath: 'lib/images/latte.png',
    ),
    Coffee(
      name: 'Latte',
      price: "3.00",
      imagePath: 'lib/images/espresso.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: "4.00",
      imagePath: 'lib/images/iced-coffee.png',
    ),
  ];

  // user cart
  final List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add coffee to cart
  void addToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  // remove coffee from cart
  void removeFromCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
