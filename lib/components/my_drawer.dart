import 'package:flutter/material.dart';
import 'package:foody_app/components/my_drawer_tile.dart';
import 'package:foody_app/pages/settings_page.dart';
import 'package:foody_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    void logOut()
    {
      final authService = AuthService();
      authService.signOut();
    }
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.1),
            Icon(Icons.lock_open_rounded,color: Theme.of(context).colorScheme.inversePrimary,size: 40),
            Divider(color: Theme.of(context).colorScheme.secondary,thickness: 1.0,height: 50.0,),
            MyDrawerTile(title: 'H O M E', icon: Icons.home, onTap: (){}),
            MyDrawerTile(title: 'S E T T I N G S', icon: Icons.settings, onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (_)=> const SettingsPage()));
            }),
            const Spacer(),
            MyDrawerTile(title: 'L O G O U T', icon: Icons.logout, onTap: ()=> logOut()),
            SizedBox(height: size.height * 0.04),

          ],
        ),
      ),
    );
  }
}
