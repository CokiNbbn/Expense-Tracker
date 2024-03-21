import 'package:expense_tracker/widget/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO fix dark theme
      // darkTheme: ThemeData().copyWith(
      //   colorScheme: kDarkColorScheme,
      //   scaffoldBackgroundColor: kDarkColorScheme.background,
      //   cardTheme: const CardTheme().copyWith(
      //     color: kDarkColorScheme.onSurface,
      //     margin: const EdgeInsets.symmetric(
      //       horizontal: 16.0,
      //       vertical: 4.0,
      //     ),
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: kDarkColorScheme.primaryContainer,
      //       foregroundColor: kDarkColorScheme.onPrimaryContainer,
      //     ),
      //   ),
      // ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
          titleTextStyle: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 4.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.w500,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 18.0,
              ),
            ),
      ),
      home: const Expenses(),
      themeMode: ThemeMode.system,
    ),
  );
}
