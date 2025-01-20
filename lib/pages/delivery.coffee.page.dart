import 'package:flutter/material.dart';


class DeliveryCoffeePage extends StatefulWidget {
  const DeliveryCoffeePage({super.key});

  @override
  State<DeliveryCoffeePage> createState() => _DeliveryCoffeePage();
}

class _DeliveryCoffeePage extends State<DeliveryCoffeePage> {


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
