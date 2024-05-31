import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foody_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //BURGERS
    Food(
        name: 'Classic Cheeseburger',
        description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
        imagePath: 'assets/b-removebg-preview.png',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avacado', price: 2.99),
        ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'assets/b-removebg-preview.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avacado', price: 2.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'assets/b-removebg-preview.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avacado', price: 2.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'assets/b-removebg-preview.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avacado', price: 2.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle',
      imagePath: 'assets/b-removebg-preview.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avacado', price: 2.99),
      ],
    ),

    //SALADS
    Food(
      name: 'Caesar Salad',
      description: 'Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing',
      imagePath: 'assets/salad-removebg-preview.png',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra Parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description: 'Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing',
      imagePath: 'assets/salad-removebg-preview.png',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra Parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description: 'Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing',
      imagePath: 'assets/salad-removebg-preview.png',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra Parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description: 'Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing',
      imagePath: 'assets/salad-removebg-preview.png',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra Parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description: 'Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing',
      imagePath: 'assets/salad-removebg-preview.png',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra Parmesan', price: 1.99),
      ],
    ),

    //Sides
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/f-removebg-preview.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/f-removebg-preview.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/f-removebg-preview.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/f-removebg-preview.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/f-removebg-preview.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),

    //Desserts
    Food(
      name: 'Apple pie',
      description: 'Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.',
      imagePath: 'assets/dessert-removebg-preview.png',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Cinnamon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple pie',
      description: 'Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.',
      imagePath: 'assets/dessert-removebg-preview.png',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Cinnamon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple pie',
      description: 'Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.',
      imagePath: 'assets/dessert-removebg-preview.png',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Cinnamon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple pie',
      description: 'Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.',
      imagePath: 'assets/dessert-removebg-preview.png',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Cinnamon Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple pie',
      description: 'Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.',
      imagePath: 'assets/dessert-removebg-preview.png',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Cinnamon Spice', price: 1.99),
      ],
    ),

    //drinks
    Food(
      name: 'Lemonade',
      description: 'Refreshing lemonade made with real lemons and a touch of sweetness',
      imagePath: 'assets/d-removebg-preview.png',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavour', price: 0.99),
        Addon(name: 'Mint Leaves', price: 1.49),
        Addon(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Refreshing lemonade made with real lemons and a touch of sweetness',
      imagePath: 'assets/d-removebg-preview.png',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavour', price: 0.99),
        Addon(name: 'Mint Leaves', price: 1.49),
        Addon(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Refreshing lemonade made with real lemons and a touch of sweetness',
      imagePath: 'assets/d-removebg-preview.png',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavour', price: 0.99),
        Addon(name: 'Mint Leaves', price: 1.49),
        Addon(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Refreshing lemonade made with real lemons and a touch of sweetness',
      imagePath: 'assets/d-removebg-preview.png',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavour', price: 0.99),
        Addon(name: 'Mint Leaves', price: 1.49),
        Addon(name: 'Ginger Zest', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Refreshing lemonade made with real lemons and a touch of sweetness',
      imagePath: 'assets/d-removebg-preview.png',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Strawberry Flavour', price: 0.99),
        Addon(name: 'Mint Leaves', price: 1.49),
        Addon(name: 'Ginger Zest', price: 1.99),
      ],
    ),

  ];
  List<CartItem> get cart => _cart;
  String _deliveryAddress = '99 Hollywood Blv';
  final List<CartItem> _cart = [];
  List<Food> get menu => _menu;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food,List<Addon> selectedAddons){
    CartItem? cartItem = _cart.firstWhereOrNull((item){
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if(cartItem != null)
      {
        cartItem.quantity++;
      }
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();

  }
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if(cartIndex != -1)
      {
        if(_cart[cartIndex].quantity > 1){
          _cart[cartIndex].quantity--;
        }else{
          _cart.removeAt(cartIndex);
        }
      }
    notifyListeners();
  }
  double getTotalPrice(){
    double total = 0.0;
    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;
      for(Addon addon in cartItem.selectedAddons)
        {
          itemTotal += addon.price;
        }
      total = itemTotal * cartItem.quantity;
    }
    return total;
  }
  int getTotalItemCount(){
    int totalItemCount = 0;
    for(CartItem cartItem in _cart)
      {
        totalItemCount += cartItem.quantity;
      }
    return totalItemCount;
  }
  void clearCart()
  {
    _cart.clear();
    notifyListeners();
  }
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  String displayCartReciept(){
    final receipt = StringBuffer();
    receipt.writeln('Here\'s your receipt.');
    receipt.writeln();
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('-------');
    for(final cartItem in _cart){
      receipt.writeln('${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln(' Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
      receipt.writeln('-------');
      receipt.writeln();
      receipt.writeln('Total Items: ${getTotalItemCount()}');
      receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
      receipt.writeln();
      receipt.writeln('Delivering to: $deliveryAddress');
    }
    return receipt.toString();
  }
  String _formatPrice(double price){
    return '\$${price.toStringAsFixed(2)}';
  }
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => '${addon.name}(${_formatPrice(addon.price)})').join(', ');
  }
}