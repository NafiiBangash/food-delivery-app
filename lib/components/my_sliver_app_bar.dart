import 'package:flutter/material.dart';
import 'package:foody_app/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const MySliverAppBar({Key? key,required this.title,required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      collapsedHeight: 120,
      expandedHeight: 340,
      centerTitle: true,
      pinned: true,
      floating: false,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('Sunset Diner'),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const CartPage()));
        }, icon: Icon(Icons.shopping_cart))
      ],
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.0,
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0,right: 0,top: 0),
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
      ),
    );
  }
}
