import 'package:flutter/material.dart';


class OrderCoffeePage extends StatefulWidget {
  const OrderCoffeePage({super.key});

  @override
  State<OrderCoffeePage> createState() => _OrderCoffeePage();
}

class _OrderCoffeePage extends State<OrderCoffeePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text('You have pushed the button this many times'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
