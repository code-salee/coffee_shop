import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CategoriesCoffeeWidget extends StatefulWidget {
  const CategoriesCoffeeWidget({super.key});

  @override
  State<CategoriesCoffeeWidget> createState() => _CategoriesCoffeeWidgetState();
}

class _CategoriesCoffeeWidgetState extends State<CategoriesCoffeeWidget> {
  // Liste des options du menu
  final List<String> menuItems = ["Les Cafes", "Macchiato", "Latte", "Americano", "Cappucino", "Frappucino"];
  // Option actuellement sélectionnée
  String selectedItem = "Les Cafes";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 20,
      height: 50,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 10,
            children: menuItems.map((item) {
              // Construire chaque option du menu
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = item; // Mettre à jour l'élément sélectionné
                  });
                },
                child: Container(
                  // margin: const EdgeInsets.only(top: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: selectedItem == item ? ThemeColor.primary : ThemeColor.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Text(
                    item,
                    style: TextStyle(
                      color: selectedItem == item ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}


