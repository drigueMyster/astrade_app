import 'dart:ui';
import "package:flutter/cupertino.dart";

class Colors {

  const Colors();

  static const Color loginGradientStart = const Color(0xFFfbab66);
  static const Color loginGradientEnd = const Color(0xFFf7418c);

  static const Color appGradientStart = const Color(0xFFfbab66);
  static const Color appGradientEnd = const Color(0xFFf7418c);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const primaryAppGradient = const LinearGradient(
    colors: const [appGradientStart, appGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}