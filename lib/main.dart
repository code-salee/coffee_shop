import 'package:coffee_shop/pages/coffee.detail.page.dart';
import 'package:coffee_shop/pages/delivery.coffee.page.dart';
import 'package:coffee_shop/pages/home.page.dart';
import 'package:coffee_shop/pages/onboarding.page.dart';
import 'package:coffee_shop/pages/order.coffee.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeShopApp());
}

class CoffeShopApp extends StatelessWidget {
  const CoffeShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFC67C4E)),
        useMaterial3: true,
      ),
      // home: const OnboardingPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingPage(),
        '/home': (context) => const HomePage(),
        '/detail': (context) => const CoffeeDetailPage(),
        '/order': (context) => const OrderCoffeePage(),
        '/delivery': (context) => const DeliveryCoffeePage(),
      },
    );
  }
}

