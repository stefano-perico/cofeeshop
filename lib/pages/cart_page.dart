import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove coffee from cart
  removeFromCart(Coffee eachCoffee) {
    Provider.of<CoffeeShop>(context, listen: false)
    .removeFromCart(eachCoffee);
  }
  
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // heading
              const Text(
                'Cart Page',
                style: TextStyle(fontSize: 20),
              ),
    
              // list of cart items
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    // get individual coffee
                    Coffee eachCoffee = value.userCart[index];
                    //return the tile for this coffee
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: const Icon(Icons.remove),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}