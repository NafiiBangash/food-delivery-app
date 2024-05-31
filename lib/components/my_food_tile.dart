import 'package:flutter/material.dart';
import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({Key? key,required this.food,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text('\$${food.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    const SizedBox(height: 10.0),
                    Text(food.description,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                  ],
                )),
                SizedBox(width: 10.0),
                //food image
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset(food.imagePath,fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}
