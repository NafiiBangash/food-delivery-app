import 'package:flutter/material.dart';
import 'package:foody_app/models/restaurant.dart';
import 'package:provider/provider.dart';
class MyReciept extends StatelessWidget {
  const MyReciept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thank your for your order'),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Theme.of(context).colorScheme.secondary)
            ),
            padding: const EdgeInsets.all(25),
            child: Consumer<Restaurant>(builder: (context,restaurant,child){
              return Text(restaurant.displayCartReciept());
            })
          ),
          SizedBox(height: 25),
          const Text('Estimated delivery time is: 4:10 PM')
        ],
      ),
    );
  }
}
