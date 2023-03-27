import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

extension DateTimeExtension on DateTime {
  String toTimeAgo() {
    final timeAgo = timeago.format(this);
    return timeAgo;
  }

  String parseToString({String format = 'dd MMM yyyy'}) {
    final parsedDate = (this).toLocal();
    final formattedDate = DateFormat(format).format(parsedDate);
    return formattedDate;
  }

  String dayMonthYearHourMinuteDate() {
    return parseToString(format: 'dd MMM yyyy, HH:mm');
  }

  String toHoursMinute() {
    final parsedDate = toLocal();
    final formattedDate = DateFormat('HH:mm').format(parsedDate);

    return formattedDate;
  }
}
