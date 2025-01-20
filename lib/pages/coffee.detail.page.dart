import 'package:flutter/material.dart';


class CoffeeDetailPage extends StatefulWidget {
  const CoffeeDetailPage({super.key});

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPage();
}

class _CoffeeDetailPage extends State<CoffeeDetailPage> {


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
