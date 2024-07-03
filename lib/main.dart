import 'package:demoapp/Item_Details.dart';
import 'package:demoapp/checkout.dart';
import 'package:demoapp/payment.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/Login_Page.dart';
import 'package:demoapp/home_page.dart';
import 'package:demoapp/new_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Payment(),
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/new_account': (context) => const NewAccount(),
        '/item_details': (context) => const ItemDetails(),
        '/checkout': (context) => const Checkout(),
        '/payment': (context) => const Payment(),
      },
    );
  }
}
