import 'package:flutter/material.dart';
import 'package:foody_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25,top: 20,right: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Mode'),
                Switch(
                  value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
                    onChanged: (value)=> Provider.of<ThemeProvider>(context,listen: false).toggleTheme(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
