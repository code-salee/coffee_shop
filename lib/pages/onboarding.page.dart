import 'package:flutter/material.dart';

import '../shared/theme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<OnboardingPage> createState() => _OnboardingPagePageState();
}

class _OnboardingPagePageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    bool isHovered = false; // État pour gérer le hover

    return Scaffold(
      body: Stack(
        children: [
          // Image d'arrière-plan
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageUrl.onboarding),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenu superposé
          Positioned(
            bottom: 100, // Positionnement vertical
            left: 20, // Positionnement horizontal
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tombez amoureux du café avec bonheur !",
                  style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: ThemeFont.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  "Bienvenue dans notre coin café confortable, où chaque tasse est un délice pour vous.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                MouseRegion(
                  onEnter: (_) => isHovered = true, // Activer l'effet de hover
                  onExit: (_) => isHovered = false, // Désactiver l'effet de hover
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200), // Animation douce
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {
                        // Action du bouton
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isHovered
                            ? ThemeColor.white // Couleur sur hover
                            : ThemeColor.primary, // Couleur par défaut
                        padding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Commencer",
                            style: TextStyle(
                              color: ThemeColor.white,
                              fontSize: FontSize.medium,
                              fontFamily: ThemeFont.primary,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward, // Icône de flèche
                            color: isHovered ? ThemeColor.white : ThemeColor.white,
                          ),
                        ],
                      ),
                    ),
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
