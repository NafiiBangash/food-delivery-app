import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foody_app/firebase_options.dart';
import 'package:foody_app/models/restaurant.dart';
import 'package:foody_app/services/auth/auth_gate.dart';
import 'package:foody_app/services/auth/login_or_register.dart';
import 'package:foody_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(create: (context)=> ThemeProvider()),
      //restaurant provider
      ChangeNotifierProvider(create: (context)=> Restaurant()),
    ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foody App',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home:  const AuthGate(),
    );
  }
}
