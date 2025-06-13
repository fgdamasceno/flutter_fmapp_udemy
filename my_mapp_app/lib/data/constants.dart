import 'package:flutter/material.dart';

class KConstants {
  static const String themeModeKey = "themeModeKey";
}

class KTextStyle {
  static const TextStyle titleTealText = TextStyle(
    color: Colors.teal,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 3.0,
  );

  static const TextStyle descriptionText = TextStyle(fontSize: 16.0);
}

class KValue {
  static const String basicLayout = "Basic Layout";
  static const String clenaUI = "Clean UI";
  static const String fixBugs = "Fix Bugs";
  static const String keyComcepts = "Key Concepts";
  static const String packages = "Packages";
}

class KDescription {
  static const String basicDescription = "This is a basic layout description";
  static const String cleanUiDescription = "This is a  clean UI description";
  static const String fixBugsDescription = "This is a fix bugs description";
  static const String keyConceptsDescription =
      "This is a key concepts description";
  static const String packagesDescription = "This is a packages description";
}
