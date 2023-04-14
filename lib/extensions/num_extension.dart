import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

extension NumExtension on num {
  String formatToDecimal() => intl.NumberFormat.decimalPattern().format(this);
  SizedBox get boxHeight => SizedBox(height: toDouble().h);
  SizedBox get boxWidth => SizedBox(width: toDouble().w);
}
