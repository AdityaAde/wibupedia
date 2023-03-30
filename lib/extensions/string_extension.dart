import 'package:intl/intl.dart';

extension StringExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String fromUnderscoreToTitleCase() {
    final splitResult = split('_').toList();
    final buffer = StringBuffer('');
    int totalSpace = 0;
    final newItem = <String>[];
    for (final item in splitResult) {
      if (totalSpace < splitResult.length - 1) {
        newItem.add('${item.toCapitalized()} ');
      } else {
        newItem.add(item.toCapitalized());
      }
      totalSpace++;
    }
    buffer.writeAll(newItem);
    return buffer.toString();
  }

  bool isValidPassword() {
    return RegExp(r'^(?=.*?[0-9])(?=.*?[!@#$%^&*(),.?":{}|<>]).{6,}$')
        .hasMatch(this);
  }

  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  String dateTimeFormat() {
    final parse = DateTime.parse(this);
    return DateFormat('dd MMM yyyy').format(parse);
  }

  String normalizeIndonesiaPhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return phoneNumber;
    }
    if (phoneNumber.substring(0, 1) == '0') {
      return '+62${phoneNumber.substring(1).trim()}';
    } else if (phoneNumber.substring(0, 1) != '+') {
      return '+62${phoneNumber.trim()}';
    }

    return phoneNumber.trim();
  }

  bool isEmpty(String? value) => (value == null || value.isEmpty);

  bool isNotEmpty(String? value) => (value != null && value.isNotEmpty);
}
