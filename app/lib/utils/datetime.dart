import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime get dropTime {
    return DateTime(year, month, day);
  }

  String get displayable {
    DateFormat dateFormat = DateFormat('HH:mm:dd');
    return dateFormat.format(this);
  }
}