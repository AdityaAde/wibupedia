import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../gen/fonts.gen.dart';
import 'theme.dart';

ThemeData theme(BuildContext context) {
  final theme = ThemeData(
    fontFamily: FontFamily.urbanist,
    brightness: Brightness.dark,
  ).copyWith(
    textTheme: Theme.of(context).textTheme.apply(
          fontFamily: FontFamily.urbanist,
          bodyColor: AppColor.ink06,
          fontSizeFactor: 1,
          fontSizeDelta: 2,
        ),
    scaffoldBackgroundColor: AppColor.dark1,
    dividerColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      color: AppColor.dark1,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: AppColor.ink06),
      titleTextStyle: AppStyle.materialTextStyle.headlineSmall
          ?.copyWith(fontWeight: FontWeight.bold),
      titleSpacing: 24.0,
      actionsIconTheme: const IconThemeData(
        color: Color(0xFF757D8A),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary500,
        textStyle: AppStyle.materialTextStyle.bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        minimumSize: const Size(double.infinity, 43),
      ),
    ),
  );
  return theme;
}
