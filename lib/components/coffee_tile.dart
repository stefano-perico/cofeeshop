import 'package:cofeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

final class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onPressed;
  CoffeeTile({super.key, required this.coffee, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.add),
        )
      ),
    );
  }
}