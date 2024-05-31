import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return  Container(
      margin: EdgeInsets.only(left: 25,right: 25,bottom: 35),
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('\$0.99',style: myPrimaryTextStyle,),
              Text('Delivery fee',style: mySecondaryTextStyle,)
            ],
          ),
          Column(
            children: [
              Text('15-30 min',style: myPrimaryTextStyle,),
              Text('Delivery time',style: mySecondaryTextStyle,)
            ],
          ),
        ],
      ),
    );
  }
}
