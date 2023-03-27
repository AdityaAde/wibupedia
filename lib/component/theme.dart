import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//import 'gen/fonts.gen.dart';

ThemeData theme(BuildContext context) {
  final theme = ThemeData(
    //fontFamily: FontFamily.dMSans,
    brightness: Brightness.light,
  ).copyWith(
    textTheme: Theme.of(context).textTheme.apply(
          //fontFamily: FontFamily.dMSans,
          bodyColor: const Color(0xff516474),
        ),
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      color: Colors.white,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Color(0xff757D8A)),
      titleTextStyle: TextStyle(
        // fontFamily: FontFamily.dMSans,
        color: const Color(0xff404D61),
        fontWeight: FontWeight.bold,
        fontSize: 24.sp,
      ),
      titleSpacing: 24.0,
      actionsIconTheme: const IconThemeData(
        color: Color(0xFF757D8A),
      ),
    ),
  );
  return theme;
}
