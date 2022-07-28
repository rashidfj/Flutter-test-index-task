import 'dart:collection';

import 'package:flutter/material.dart';

class Strings {
  Strings._();

  //General
  static const String appName = "Flutter Test Index";
  static const String login = "Login";
  static const String kostenlosRegistrieren = "Kostenlos Registrieren";
  static const String arbeitnehmer = "Arbeitnehmer";
  static const String arbeitgeber = "Arbeitgeber";
  static const String temporarburo = "Temporärbüro";
  static const String title1 = "Drei einfache Schritte zu deinem neuen Job";
  static const String title2 = "Drei einfache Schritte zu deinem neuen Mitarbeiter";
  static const String title3 = "Drei einfache Schritte zur Vermittlung neuer Mitarbeiter";
  static const String detailOne1 = "Erstellen dein Lebenslauf";
  static const String detailOne3 = "Mit nur einem Klick bewerben";
  static const String webTitle = "Deine Job website";


  //colors
  static const Color white = Color(0xffFFFFFF);
  static const Color dark = Color(0xff2D3748);
  static const Color darkTextColor = Color(0xff4A5568);
  static const Color selectedTabTextColor = Color(0xffE6FFFA);
  static const Color unselectedTabTextColor = Color(0xff319795);
  static const Color greyTextColor = Color(0xff718096);
  static const Color lightPurpleColor = Color(0xffEBF4FF);
  static const Color lightBackgroundColor = Color(0xffF7FAFC);
  static const Color blueBackgroundGradiantColor = Color(0xff3182CE);
  static const Color tabBorderColor = Color(0xffCBD5E0);
  static const Color tabSelectedBackgroundColor = Color(0xff81E6D9);
  static const Color appBarElevationBorderColor = Color(0x00000029);

  static const String fontName = 'Lato';

  static const TextStyle small = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 0.9,
    color: white,
  );
  static const TextStyle medium = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.4,
    height: 0.9,
    color: white,
  );

  static const TextStyle large = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 55,
    height: 0.9,
    color: darkTextColor,
  );

  static BoxDecoration decorWhite = const BoxDecoration(
      color: white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ],
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12), topRight: Radius.circular(12)));

  static var border1 = const BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
  );
  static var border2 = BorderRadius.circular(0);
  static var border3 = const BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );
}
