import 'package:flutter/material.dart';
import 'package:foody_app/components/my_button.dart';
import 'package:foody_app/components/my_textfield.dart';
import 'package:foody_app/pages/home_page.dart';
import 'package:foody_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void login() async
  {
    final _authService = AuthService();
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }

    catch (e) {
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text(e.toString()),
      ));
    }

  }

  void forgotPw(){
    showDialog(context: context, builder: (context)=> AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text('User tapped forgot password'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
     backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded,size: 100.0,color: Theme.of(context).colorScheme.inversePrimary,),
            SizedBox(height: 20.0),
            Text(
              'Food delivery app',
              style: TextStyle(fontSize: 16.0,color: Theme.of(context).colorScheme.inversePrimary),),
            SizedBox(height: 30.0),
            MyTextField(hintText: 'Email', controller: emailController, obscure: false),
            SizedBox(height: 20.0),
            MyTextField(hintText: 'Password', controller: passwordController, obscure: true),
            SizedBox(height: 20.0),
            MyButton(title: 'Sign In',onTap: login),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                const SizedBox(width: 4.0),
                GestureDetector(
                  onTap: widget.onTap,
                    child: Text('register now',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
