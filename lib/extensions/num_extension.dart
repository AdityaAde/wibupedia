import 'package:intl/intl.dart' as intl;

extension NumExtension on num {
  String formatToDecimal() => intl.NumberFormat.decimalPattern().format(this);
}
