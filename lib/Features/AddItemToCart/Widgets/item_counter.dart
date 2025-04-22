import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/provider/counter_provider.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      padding: const EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .decrement();
              },
              child: Icon(CupertinoIcons.minus, size: 20)),
          Text(
            Provider.of<CounterProvider>(context).counter.toString(),
            style: TextStyle(fontSize: 16),
          ),
          GestureDetector(
              onTap: () {
                Provider.of<CounterProvider>(context, listen: false)
                    .increment();
              },
              child: Icon(CupertinoIcons.add, size: 20)),
        ],
      ),
    );
  }
}
