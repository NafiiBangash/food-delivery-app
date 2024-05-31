import 'package:flutter/material.dart';
import 'package:foody_app/components/my_quantity_selector.dart';
import 'package:foody_app/models/cart_item.dart';
import 'package:foody_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.food.name),
                    Text('\$${cartItem.food.price}',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    SizedBox(height: 10.0),
                    QuantitySelector(quantity: cartItem.quantity, food: cartItem.food, onIncrement: (){
                      restaurant.addToCart(cartItem.food,cartItem.selectedAddons);
                    }, onDecrement: (){
                      restaurant.removeFromCart(cartItem);
                    }),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty? 0:60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10,bottom: 10,right: 10),
                children: cartItem.selectedAddons.map((addon) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(addon.name),
                          Text(' (\$${addon.price})'),
                        ],
                      ),
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary
                        )
                      ),
                      backgroundColor: Theme.of(context).colorScheme.background,
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 12.0
                      ),
                      onSelected: (value){},
                  ),
                ) ).toList(),
              ),
            ),
          ],
        ),
      );
    });
  }
}
