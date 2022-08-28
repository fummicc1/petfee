extension DateTimeExtension on DateTime {
  DateTime get dropTime {
    return DateTime(year, month, day);
  }
}