import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);

  static const Color primary = Color(0xFF90593C);
  static Color secondary = Color(0xFF90593C).withOpacity(0.5);
  static Color secondary2 = Color(0xFFB29281);
  static const Color danger = Color(0xFFFF8484);
  static const Color success = Color(0xFF07E079);
  static const Color warning = Color(0xFFF7B500);
  static const Color info = Color(0xFF0095FF);

  static const Color headlineTextColor = Color(0xFF90593C);
  static const Color subTitleTextColor = Color(0xFF242424);
  static const Color bg = Color(0xFFFFFFFF);
  static const Color secondaryBg = Color(0xFFF7F3ED);
  static const Color secondaryBg2 = Color(0xFFF4EBDB);

  static Color shadow = Color(0xFF90593C).withOpacity(0.2);
  static  Color borderCard = Color(0xFF707070).withOpacity(0.5);
  static const double radius = 16.0;

  static const Color gradient1 = Color(0xFF1DA1F3);
  static const Color gradient2 = Color(0xFF4173CC);

  static const Color navigatiorBg = Color(0xFF632D14);


  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.bg,
    backgroundColor: AppTheme.bg,
    brightness: Brightness.light,
    primaryColor: AppTheme.headlineTextColor,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    primaryColor: AppTheme.bg,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    headline5: _headline5,
    headline6: _headline6,
    button: _button,
    subtitle1: _subtitle1,
    subtitle2: _subtitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline1: _headline1.copyWith(color: Colors.white),
    headline2: _headline2.copyWith(color: Colors.white),
    headline3: _headline3.copyWith(color: Colors.white),
    headline4: _headline4.copyWith(color: Colors.white),
    headline5: _headline5.copyWith(color: Colors.white),
    headline6: _headline6.copyWith(color: Colors.white),
    button: _button.copyWith(color: AppTheme.headlineTextColor),
    subtitle1: _subtitle1.copyWith(color: Colors.white),
    subtitle2: _subtitle2.copyWith(color: Colors.white),
    bodyText1: _bodyText1.copyWith(color: AppTheme.primary),
    bodyText2: _bodyText2.copyWith(color: AppTheme.secondaryBg),
  );

  static final TextStyle _headline1 = TextStyle(
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: "Oriya-MN",
    fontSize: 35,
  );
  static final TextStyle _headline2 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w900,
    fontSize: 25,
  );
  static final TextStyle _headline3 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w900,
    fontSize: 16,
  );
  static final TextStyle _headline4 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.headlineTextColor,
    fontSize: 16,
  );
  static final TextStyle _headline5 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.w900,
    fontSize: 14,
  );
  static final TextStyle _headline6 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.w900,
    fontSize: 12,
  );

  static final TextStyle _button = TextStyle(
  );

  static final TextStyle _subtitle1 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.subTitleTextColor,
    fontSize: 12,
  );

  static final TextStyle _subtitle2 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.subTitleTextColor.withOpacity(0.5),
    fontSize: 12,
  );

  static final TextStyle _bodyText1 = TextStyle(
    fontFamily: "Oriya-MN",
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.w900,
    fontSize: 9,
  );

  static final TextStyle _bodyText2 = TextStyle(

  );

  static final SystemUiOverlayStyle systemUiDark = SystemUiOverlayStyle(
    systemNavigationBarColor: AppTheme.headlineTextColor,
    statusBarColor: AppTheme.headlineTextColor,
    statusBarIconBrightness: Brightness.light,
  );

  static final SystemUiOverlayStyle systemUiLight = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: AppTheme.secondaryBg,
    statusBarIconBrightness: Brightness.dark,
  );

  static final SystemUiOverlayStyle systemUiTrans = SystemUiOverlayStyle(
    systemNavigationBarColor: AppTheme.navigatiorBg,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,

  );


}
