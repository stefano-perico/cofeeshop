import 'package:cofeeshop/components/coffee_tile.dart';
import 'package:cofeeshop/models/coffee.dart';
import 'package:cofeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add coffee to cart
  void addToCart(Coffee coffee) {
    // get the coffee shop
    CoffeeShop coffeeShop = Provider.of<CoffeeShop>(context, listen: false);
    // add the coffee to cart
    coffeeShop.addToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'How would you like your coffee?',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 25),
              // list of coffee to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    // get individual coffee
                    Coffee eachCoffee = value.coffeeShop[index];
                    //return the tile for this coffee
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => addToCart(eachCoffee),
                    );
                  },
                ),
              ),
            ]
          ),
        ),
      )
    );
  }
}
