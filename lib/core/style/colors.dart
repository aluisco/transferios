import 'package:flutter/material.dart';
import 'package:transferios/core/utils/material_color_generator.dart';

class AppColor {
  /// App Colors
  static const Color primary = Color.fromARGB(255, 40, 147, 255);
  static const Color secondary = Colors.grey;

  /// Metropolitano colors
  static const Color primaryMetro = Color.fromARGB(255, 2, 124, 18);
  static const Color secondaryMetro = Colors.black;

  /// Bandec colors
  static const Color primaryBandec = Color.fromARGB(255, 140, 12, 1);
  static const Color secondaryBandec = Colors.black;

  /// BPA colors
  static const Color primaryBpa = Colors.brown;
  static const Color secondaryBpa = Colors.black;

  static MaterialColor materialGenerator(Color color) =>
      createMaterialColor(color);
}
