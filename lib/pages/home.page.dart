import 'package:coffee_shop/shared/theme.dart';
import 'package:coffee_shop/widgets/banner.widget.dart';
import 'package:flutter/material.dart';

import '../widgets/categories.coffee.widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ThemeColor.white,
      body: ListView(
          padding: EdgeInsets.zero, // Supprime tout le padding par défaut
          children: [
             BannerWidget(),
             Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10),
                 child: CategoriesCoffeeWidget()
             )
        ]
      ),
    );
  }
}
