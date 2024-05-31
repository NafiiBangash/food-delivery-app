import 'package:flutter/material.dart';
import '../models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
   final VoidCallback onDecrement;
  const QuantitySelector({Key? key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50.0),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Icon(Icons.remove,size: 20.0,color: Theme.of(context).colorScheme.primary,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 12.0,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(Icons.add,size: 20.0,color: Theme.of(context).colorScheme.primary,),
          ),
        ],
      ),
    );
  }
}
