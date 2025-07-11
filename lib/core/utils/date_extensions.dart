import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  /// Returns true if the date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Returns true if the date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && month == yesterday.month && day == yesterday.day;
  }

  /// Returns a formatted date string: dd/MM/yyyy
  String get formattedDate => DateFormat('dd/MM/yyyy').format(this);

  /// Returns a formatted time string: HH:mm
  String get formattedTime => DateFormat('HH:mm').format(this);

  /// Returns a full date-time format: dd MMM yyyy, HH:mm
  String get formattedFull => DateFormat('dd MMM yyyy, HH:mm').format(this);

}
