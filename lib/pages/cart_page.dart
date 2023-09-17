import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: ListTile(
                      title: const Text('Coffee Name'),
                      subtitle: const Text('Coffee Price'),
                      leading: Image.asset('assets/images/coffee1.png'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      )
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}