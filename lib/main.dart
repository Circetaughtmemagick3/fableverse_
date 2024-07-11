import 'package:fabverse/adminpanel/admin.dart';
import 'package:fabverse/adminpanel/manage.dart';
import 'package:fabverse/auth.dart/splashscreen.dart';
import 'package:fabverse/library.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fabverse/cart.dart';
import 'package:fabverse/product.dart';
import 'package:fabverse/second_page.dart';
import 'package:fabverse/home.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Set initial route to the Splashscreen
      routes: {
        '/splash': (context) => Splashscreen(), // Splashscreen as initial route
        '/home': (context) => Home(), // Default home page
        '/search': (context) => SecondPage(),
        '/cart': (context) => CartPage(),
        '/lib':(context) => Library(),
        '/admin':(context)=> AdminPanel(),
        '/manage':(context)=>ManageBooksPage()
        
      },
    );
  }
}
