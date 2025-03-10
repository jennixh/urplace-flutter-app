import "package:flutter/material.dart";

class MaterialTheme {

  static ColorScheme lightScheme() {
    return ColorScheme.fromSeed(
      seedColor: const Color(0xff6732d4), // Cor base
      brightness: Brightness.light,
      primary: const Color(0xff6732d4),
      onSurface: const Color(0xffFFFFFF),
      surface: const Color(0xff8B63FF),
      secondary: const Color(0xff3300A8),
      tertiary: const Color(0xff833eff),
      onPrimaryContainer: const Color(0xff000000),
      onSecondaryContainer: const Color(0xffFFFFFF),
      secondaryContainer: const Color(0xffBA6EFF),
      onTertiaryContainer: const Color(0xff954EFF),
      surfaceTint: const Color(0xffC1ACFF), // signature background
      primaryContainer:
          const Color(0xffF1EFF5), 
      surfaceDim: Color(0xff999999),// lembretes background ao abrir pop up
      surfaceContainer:
          const Color(0x33000000), // fundo dos lembretes com 20% de opacidade
      onPrimaryFixed: const Color(0xff4A4453), // Cor adicional
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        fontFamily: 'Poppins',
        splashColor: Colors.transparent, // remover efeito ao clicar na nav bar
        scaffoldBackgroundColor: colorScheme.onSurface,
        canvasColor: colorScheme.surface,
      );
}
