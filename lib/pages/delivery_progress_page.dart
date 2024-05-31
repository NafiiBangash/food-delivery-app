import 'package:flutter/material.dart';
import 'package:foody_app/components/my_reciept.dart';
import 'package:foody_app/models/restaurant.dart';
import 'package:foody_app/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({Key? key}) : super(key: key);

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  FirestoreService db = FirestoreService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String receipt = context.read<Restaurant>().displayCartReciept();
    db.saveOrderToDatabase(receipt);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReciept(),
        ],
      ),
    );
  }
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle
            ),
            child:  IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nafees',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),),
              Text('Driver',style: TextStyle(
                color: Theme.of(context).colorScheme.primary
              ),),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle
                ),
                child:  IconButton(onPressed: (){}, icon:  Icon(Icons.message,color: Theme.of(context).colorScheme.primary,)),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle
                ),
                child:  IconButton(onPressed: (){}, icon: const Icon(Icons.call,color: Colors.green,)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
