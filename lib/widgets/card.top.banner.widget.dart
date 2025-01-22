import 'package:flutter/material.dart';

import '../shared/theme.dart';
import 'card.promo.widget.dart';

class CardTopBannerWidget extends StatefulWidget{

  const CardTopBannerWidget({super.key});

  @override
  State<CardTopBannerWidget> createState() {
    return CardTopBannerWidgetSate();
  }

}

class CardTopBannerWidgetSate extends State<CardTopBannerWidget>{

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 250,
      // backgroundColor: Colors.black, // Couleur de fond
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50), // Espacement avec le haut de l'écran
            // Localisation
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Localisation',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'Ouest Foire, Dakar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
            const SizedBox(height: 20),
            // Barre de recherche
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: 'Search coffee',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(width: 10),
                Container(
                  // padding: const EdgeInsets.all(10),
                  alignment: AlignmentDirectional.topEnd,
                  decoration: BoxDecoration(
                    color: ThemeColor.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {print("filter button work");},
                    icon: Icon(Icons.tune),
                    color: ThemeColor.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}