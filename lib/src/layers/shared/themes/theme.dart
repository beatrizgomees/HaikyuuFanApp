import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  appBarTheme: AppBarTheme(
    backgroundColor: _lightColorScheme.primaryContainer,
    titleTextStyle: const TextStyle(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _lightColorScheme.primaryContainer,
    foregroundColor: Colors.white
  )
);


final darkTheme = ThemeData(
  colorScheme: _darkColorScheme,
);

final themeButtonHome = ThemeData(
  primaryColor:  Color.fromRGBO(0, 0, 0, 0.612),
  secondaryHeaderColor: _lightColorScheme.surface 
  
  
);


final themeCardButton = ThemeData(
  primaryColor: Color.fromRGBO(233, 136, 51, 1),
);

final textDecoration = ThemeData(
  primaryColor:Colors.white,
  highlightColor: Colors.white54
);

final textStyle = TextStyle(
  color:Color.fromRGBO(44, 48, 78, 1),
  fontSize: 18,
  fontWeight: FontWeight.w500,
  decorationColor: _lightColorScheme.surface 
  );


final themeElevatedButtonMaterial = ButtonStyle(
   backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(44, 48, 78, 1))
);
