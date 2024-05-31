import 'package:flutter/material.dart';
import 'package:foody_app/components/my_button.dart';
import 'package:foody_app/models/restaurant.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon,bool> selectedAddons = {};
  FoodPage({Key? key, required this.food}) : super(key: key){
    for(Addon addon in food.availableAddons){
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food,Map<Addon,bool> selectedAddons){
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(widget.food.imagePath),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.food.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('\$${widget.food.price}',style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.primary),),
                        SizedBox(height: 10.0,),
                        Text(widget.food.description),
                        SizedBox(height: 10.0,),
                        Divider(color: Theme.of(context).colorScheme.secondary,),
                        Text('Add-ons',style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddons.length,
                            itemBuilder: (context, index) {
                              Addon addon = widget.food.availableAddons[index];
                              return CheckboxListTile(
                                activeColor: Theme.of(context).colorScheme.background,
                                title: Text(addon.name),
                                  subtitle: Text('\$'+addon.price.toString()),
                                  value: widget.selectedAddons[addon],
                                  onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                  },
                            );
                              },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: MyButton(title: 'Add to cart', onTap: ()=> addToCart(widget.food,widget.selectedAddons)),
                  ),
                  SizedBox(height: 25.0),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle
              ),
              child: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
            ),
          ),
        ],
      ),
    );
  }
}
