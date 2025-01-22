import 'package:flutter/material.dart';

import '../shared/theme.dart';
import 'categories.coffee.widget.dart';

class CardPromoWidget extends StatefulWidget {
  const CardPromoWidget({super.key});

  @override
  State<CardPromoWidget> createState() => CardPromoWidgetSate();
}

class CardPromoWidgetSate extends State<CardPromoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.brown[300],
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(ImageUrl.banner),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Étiquette prom
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Promo',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Texte principal
            Positioned(
              bottom: 20,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Une tasse achetée',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'une OFFERT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
