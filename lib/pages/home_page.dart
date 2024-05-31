import 'package:flutter/material.dart';
import 'package:foody_app/components/my_current_location.dart';
import 'package:foody_app/components/my_description_box.dart';
import 'package:foody_app/components/my_drawer.dart';
import 'package:foody_app/components/my_food_tile.dart';
import 'package:foody_app/components/my_sliver_app_bar.dart';
import 'package:foody_app/components/my_tab_bar.dart';
import 'package:foody_app/models/food.dart';
import 'package:foody_app/models/restaurant.dart';
import 'package:foody_app/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category,List<Food> fullMenu)
  {
    return fullMenu.where((food) => food.category == category).toList();
  }
  //return a list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu)
  {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context,index){
          final food = categoryMenu[index];
          return MyFoodTile(food: food, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodPage(food: food))));
      });
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(headerSliverBuilder: (context,innerBoxIsScrolled)=>[
        MySliverAppBar(
          title: MyTabBar(tabController: _tabController),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              indent: 25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.secondary,
            ),
            MyCurrentLocation(),
            MyDescriptionBox(),
          ],
        ),
        ),
      ],
          body: Consumer<Restaurant>(
            builder: (context,restaurant,child) {
              return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
      );
            }
          ),
    ),
    );
  }
}
