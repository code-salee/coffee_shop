import 'dart:ui';
import 'package:flutter/material.dart';

/// Couleurs principales utilisées dans l'application
class ThemeColor {
  static const Color primary = Color(0xFFC67C4E);
  static const Color secondary = Color(0xFFEDD6C8);
  static const Color black = Color(0xFF000000);
  static const Color tertiary = Color(0xFFE3E3E3);

  // Autres couleurs
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFFB0B0B0);
  static const Color error = Color(0xFFFF6B6B); // Pour les erreurs
}

/// Polices principales utilisées dans l'application
class ThemeFont {
  static const String primary = 'Sora';
  static const String secondary = 'Roboto';
  static const String tertiary = 'OpenSans';
}

/// Autres constantes UI (ex. marges, tailles)
class FontSize {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 32.0;
  static const double extraLarge = 64.0;

  static const double borderRadius = 12.0; // Rayon des coins arrondis
  static const double iconSize = 24.0;     // Taille des icônes par défaut
}

class ImageUrl{
  static const onboarding = "assets/images/onboarding.png";
}
